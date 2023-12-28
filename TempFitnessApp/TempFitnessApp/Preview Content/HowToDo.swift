//
//  HowToDo.swift
//  wwdcFitnessApp
//
//  Created by Omer on 16.04.2023.
//

import SwiftUI

struct HowToDo: View {
    
    @State private var isStartWorkingOut = false
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("Before We Start")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.purple)
                    .padding(.top, 20)
                    .padding(.bottom, 10)
                
                VStack(alignment: .leading, spacing: 20) {
                    HStack(alignment: .top, spacing: 20) {
                        Image("pushup_image")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 200)
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Pushup")
                                .font(.title2)
                                .bold()
                                .foregroundColor(.blue)
                            Text("The pushup is a compound exercise that primarily targets the chest, shoulders, and triceps. To perform a pushup, start in a high plank position with your hands slightly wider than shoulder-width apart. Lower your body until your chest nearly touches the ground, then push back up to the starting position.")
                                .font(.body)
                        }
                    }
                    
                    HStack(alignment: .top, spacing: 20) {
                        Image("row_image")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 200)
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Row")
                                .font(.title2)
                                .bold()
                                .foregroundColor(.blue)
                            Text("The row is a compound exercise that primarily targets the back, shoulders, and biceps. To perform a row, start with your feet shoulder-width apart, knees slightly bent, and your upper body bent forward at the hips. Hold a weight in each hand and lift them towards your chest, squeezing your shoulder blades together as you do.")
                                .font(.body)
                        }
                    }
                    
                    HStack(alignment: .top, spacing: 20) {
                        Image("shoulderPress_image")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 200)
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Shoulder Press")
                                .font(.title2)
                                .bold()
                                .foregroundColor(.blue)
                            Text("The shoulder press is an isolation exercise that primarily targets the shoulders. To perform a shoulder press, start with a weight in each hand at shoulder height. Press the weights upward until your arms are fully extended, then lower them back down to shoulder height.")
                                .font(.body)
                        }
                    }
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Before starting any exercise program, please consult with your physician or other qualified healthcare provider to determine if it is appropriate for your needs.")
                            .font(.body)
                            .foregroundColor(.red)
                            .italic()
                    }
                    NavigationLink(destination: PushUpScreen().navigationBarHidden(true).navigationViewStyle(.stack), label: {
                        HStack {
                            Spacer()
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundColor(.orange)
                                    .frame(width: 200, height: 80)
                                HStack {
                                    Text("Let's go")
                                        .foregroundColor(.white)
                                        .font(.system(size: 25, weight: .semibold))
                                    Image(systemName: "arrow.right.circle.fill")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 30)
                                        .foregroundColor(.white)
                                }
                                .padding()
                            }
                            Spacer()
                        }
                    })

                }
                .padding(.horizontal, 20)
                .padding(.bottom, 30)
            }
            .padding(.horizontal, 20)
        }
    }
}

