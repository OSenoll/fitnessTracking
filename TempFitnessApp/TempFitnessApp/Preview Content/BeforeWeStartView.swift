//
//  BeforeWeStartView.swift
//  wwdcFitnessApp
//
//  Created by Omer on 13.04.2023.
//

import Foundation
import SwiftUI

struct BeforeWeStartView: View {
    
    @State private var isWorkOutScreenPresented = false
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("Before We Start")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.purple)
                    .padding(.top, 20)
                    .padding(.bottom, 10)
                
                Group {
                    VStack(alignment: .leading, spacing: 10) {
                        Text("How it works ")
                            .font(.title3)
                            .bold()
                            .foregroundColor(.blue)
                        Text("The purpose of this app is to help individuals who are new to fitness and may not have much prior knowledge. By using the camera to see themselves and receiving guidance from the app, users can gain a better understanding of how to effectively work out and develop fitness practices.")
                            .font(.body)
                    }
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Some useful information below")
                            .font(.title2)
                            .bold()
                            .foregroundColor(.red)
                            
                    }
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Proper Form")
                            .font(.title3)
                            .bold()
                            .foregroundColor(.blue)
                        Text("Proper form is essential when performing exercises to prevent injury and ensure that you are targeting the intended muscle groups. You can provide information on what proper form looks like for each exercise and how to achieve it.")
                            .font(.body)
                    }
                   
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Muscle Groups")
                            .font(.title3)
                            .bold()
                            .foregroundColor(.blue)
                        Text("Understanding which muscle groups you are targeting with each exercise can help you to better focus your workouts and achieve your goals. You can provide information on which muscle groups are involved in each exercise.")
                            .font(.body)
                    }
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Exercise Variations")
                            .font(.title3)
                            .bold()
                            .foregroundColor(.blue)
                        Text("There are often variations of exercises that can be performed to target different muscle groups or add variety to your workouts. You can provide information on different variations of exercises and how they can be performed.")
                            .font(.body)
                    }
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Benefits of Exercise")
                            .font(.title3)
                            .bold()
                            .foregroundColor(.blue)
                        Text("Regular exercise has numerous benefits for both physical and mental health. You can provide information on some of the benefits of exercise, such as improved cardiovascular health, increased muscle mass, and reduced stress levels.")
                            .font(.body)
                    }
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Common Mistakes")
                            .font(.title3)
                            .bold()
                            .foregroundColor(.blue)
                        Text("There are common mistakes that people make when performing exercises that can hinder their progress or even lead to injury. You can provide information on some of the most common mistakes and how to avoid them.")
                            .font(.body)
                    }
                    NavigationLink(
                        destination: HowToDo().navigationBarHidden(true),
                                        isActive: $isWorkOutScreenPresented,
                                        label: {
                                            EmptyView()
                                        })
                                        .hidden()
                                    
                                    Button(action: {
                                        isWorkOutScreenPresented = true
                                    }, label: {
                                        Text("I understand")
                                            .font(.headline)
                                            .foregroundColor(.white)
                                            .padding()
                                            .frame(maxWidth: .infinity)
                                            .background(Color.blue)
                                            .cornerRadius(10)
                                    })
                }
                .padding(.horizontal, 20)
                .padding(.bottom, 30)
                
            }
            .padding(.horizontal, 20)
        }
    }
}





