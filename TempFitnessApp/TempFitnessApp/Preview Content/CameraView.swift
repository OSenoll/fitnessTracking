//
//  CameraView.swift
//  wwdcFitnessApp
//
//  Created by Omer on 18.04.2023.
//

import SwiftUI

struct CameraView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> CameraViewController {
        return CameraViewController()
    }
    
    func updateUIViewController(_ uiViewController: CameraViewController, context: Context) {
    }
}

