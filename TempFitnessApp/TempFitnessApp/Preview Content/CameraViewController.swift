//
//  CameraViewController.swift
//  wwdcFitnessApp
//
//  Created by Omer on 18.04.2023.
//

import UIKit
import AVFoundation
import Vision
import CoreML

class CameraViewController: UIViewController, AVCaptureVideoDataOutputSampleBufferDelegate {
    
    let cameraSession = AVCaptureSession()
    var previewLayer: AVCaptureVideoPreviewLayer!
    var sequenceHandler = VNSequenceRequestHandler()
    var pushUpCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupCamera()
    }
    
    func setupCamera() {
        cameraSession.beginConfiguration()
        cameraSession.sessionPreset = .photo
        
        // Add the front camera as the input device
        guard let frontCamera = AVCaptureDevice.default(.builtInWideAngleCamera, for: .video, position: .front),
              let deviceInput = try? AVCaptureDeviceInput(device: frontCamera),
              cameraSession.canAddInput(deviceInput) else {
            print("Failed to add the front camera as an input device.")
            return
        }
        cameraSession.addInput(deviceInput)
        
        // Set up the output for the video frames
        let videoOutput = AVCaptureVideoDataOutput()
        videoOutput.setSampleBufferDelegate(self, queue: DispatchQueue(label: "videoQueue"))
        guard cameraSession.canAddOutput(videoOutput) else {
            print("Failed to add video output.")
            return
        }
        cameraSession.addOutput(videoOutput)
        
        cameraSession.commitConfiguration()
        
        // Set up the preview layer
        previewLayer = AVCaptureVideoPreviewLayer(session: cameraSession)
        previewLayer.videoGravity = .resizeAspectFill
        previewLayer.connection?.videoOrientation = .portrait
        
        // Set the preview layer frame to center it in a view with size 200x200
        let previewSize = CGSize(width: 200, height: 200)
        let previewOrigin = CGPoint(x: (view.frame.width - previewSize.width) / 2, y: (view.frame.height - previewSize.height) / 2)
        previewLayer.frame = CGRect(origin: previewOrigin, size: previewSize)
        
        view.layer.addSublayer(previewLayer)
        
        // Start the capture session
        DispatchQueue.global().async {
            self.cameraSession.startRunning()
        }
    }

    func captureOutput(_ output: AVCaptureOutput, didOutput sampleBuffer: CMSampleBuffer, from connection: AVCaptureConnection) {
        // Process each video frame and pass it to VNSequenceRequestHandler
        
        guard let pixelBuffer = CMSampleBufferGetImageBuffer(sampleBuffer) else { return }
        
        let request = VNCoreMLRequest(model: try! VNCoreMLModel(for: FitnessMoves().model)) { [weak self] (finishedRequest, error) in
            guard let results = finishedRequest.results as? [VNClassificationObservation], let topResult = results.first else { return }
            
            DispatchQueue.main.async {
                if topResult.identifier == "push_up" {
                    self?.pushUpCount += 1
                    
                    if self?.pushUpCount == 3 {
                        // Perform segue or present SuccessView programmatically
                        print("it works")
                    }
                }
            }
        }
        
        try? self.sequenceHandler.perform([request], on: pixelBuffer)
    }

}
