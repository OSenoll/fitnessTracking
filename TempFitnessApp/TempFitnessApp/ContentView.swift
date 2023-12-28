import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            VStack {
                Image("fitness_icon")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200)
                    .padding(.top, 20)
                Spacer()
                (
                    Text("Improve your fitness moves with the power of ")
                    +
                    Text("Machine Learning")
                        .foregroundColor(.blue)
                    +
                    Text("!")
                )
                .multilineTextAlignment(.center)
                .font(.system(size: 30))
                .padding()
                .fixedSize(horizontal: false, vertical: true)
                Text("By using my fitness app, you can track your progress and learn the right form for each exercise.")
                    .multilineTextAlignment(.center)
                    .font(.system(size: 30))
                    .padding()
                    .fixedSize(horizontal: false, vertical: true)
                (
                    Text("My app uses advanced ")
                    +
                    Text("Machine Learning")
                        .foregroundColor(.blue)
                    +
                    Text(" algorithms to analyze your movements and provide feedback.")
                )
                .multilineTextAlignment(.center)
                .font(.system(size: 30))
                .padding()
                .fixedSize(horizontal: false, vertical: true)
                Spacer()
                
                NavigationLink(destination: BeforeWeStartView().navigationBarHidden(true).navigationViewStyle(.stack), label: {
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
                })

                Spacer()
                Text("Please note that this app requires camera access.")
                    .font(.system(size: 15))
                    .multilineTextAlignment(.center)
                    .padding([.horizontal, .top])
            }
        }
        .onAppear(perform: {
            
        })
        .navigationBarHidden(true)
        .navigationViewStyle(.stack)
    }
}
