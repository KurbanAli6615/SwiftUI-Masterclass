//
//  HomeView.swift
//  Restart
//
//  Created by KurbanAli on 12/11/21.
//

import SwiftUI

struct HomeView: View {
    //  MARK: - Property
    @AppStorage("onboarding") var isOnboardingViewActive:Bool = true
    
    @State private var isAnimating: Bool = false
    
    //  MARK: - Body
    
    var body: some View {
        VStack (spacing: 20) {
           
            //  MARK: - Header
            
            Spacer()
            ZStack {
                CircleGroupView(shapeColor: .gray, opacity: 0.2)

                Image("character-2")
                    .resizable()
                    .scaledToFit()
                    .padding()
                    .offset(y: isAnimating ? 30 : -30)
                    .animation(
                            .easeOut(duration: 4)
                            .repeatForever(),
                    value: isAnimating
                    )
            }
            
            //  MARK: - Center
            
            Text("This time that leads to mastery is dependent on the intensity of our focus.")
                .font(.title3)
                .fontWeight(.light)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding()
            //  MARK: - Footer
            Spacer()
            
            Button {
                withAnimation {
                    isOnboardingViewActive = true
                    playSound(sound: "success", type: "m4a")

                }
            } label: {
                Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                    .imageScale(.large)
    
                Text("Restart")
                    .font(.system(.title3))
                    .fontWeight(.bold)
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
        }
        .onAppear(perform: {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
                isAnimating = true
            })
        })
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
