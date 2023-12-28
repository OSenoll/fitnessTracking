//
//  PushUpScreen.swift
//  wwdcFitnessApp
//
//  Created by Omer on 17.04.2023.
//

import Foundation
import SwiftUI

struct PushUpScreen: View {
    
    var body: some View {
        VStack {
            Image("pushup_image")
                .resizable()
                .frame(width: 200, height: 200)
                .padding()
            Text("Push-ups")
                .font(.title)
                .fontWeight(.bold)
                .padding(.bottom, 10)
            Text("For this exercise, make sure you face the camera just like in the picture and attempt to do a push-up. After successfully completing 3 push-ups, you will move on to the next exercise.")
                .multilineTextAlignment(.center)
                .padding(.horizontal, 30)
            Spacer()
            NavigationLink(destination: CameraScreen().navigationBarHidden(true).navigationViewStyle(.stack), label: {
                Image(systemName: "arrow.right.circle.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50)
                    .foregroundColor(.blue)
            })
            Spacer()

        }
        .padding()
    }
}

struct PushUpScreen_Previews: PreviewProvider {
    static var previews: some View {
        PushUpScreen()
    }
}
