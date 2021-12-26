//
//  AvocadosView.swift
//  Avocados
//
//  Created by KurbanAli on 26/12/21.
//

import SwiftUI

struct AvocadosView: View {
    //  MARK: - Properties

    @State private var animation: Bool = false
    
    //  MARK: - Body

    var body: some View {
        VStack {
            Spacer()
            Image("avocado")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 240, height: 240, alignment: .center)
                .shadow(color: Color("ColorBlackTransperentDark"), radius: 12)
                .scaleEffect(animation ? 1 : 0.9)
                .opacity(animation ? 1 : 0.5)
                .animation(Animation.easeInOut(duration: 1.5).repeatForever(autoreverses: true), value: animation)
            
            Text("Avocados")
                .font(.system(size: 42, weight: .bold , design: .serif))
                .foregroundColor(.white)
                .shadow(color: Color("ColorBlackTransperentDark"), radius: 4, x:0 ,y: 4)
            
            Text("""
Creamy, green, and full of nutrients!
 Avocado is a powerhouse ingredient at any meal. Enjoy these handpicked avocado recipes for breakfast, lunch, dinner & more!
""")
                .lineLimit(nil)
                .font(.system(.headline, design: .serif))
                .foregroundColor(Color("ColorGreenLight"))
                .multilineTextAlignment(.center)
                .lineSpacing(8)
                .frame(maxWidth: 640, minHeight: 120)
            
            Spacer()
        }
        .background(
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
        )
        .edgesIgnoringSafeArea(.all)
        .onAppear {
            self.animation.toggle()
        }
    }
}

struct AvocadosView_Previews: PreviewProvider {
    static var previews: some View {
        AvocadosView()
    }
}
