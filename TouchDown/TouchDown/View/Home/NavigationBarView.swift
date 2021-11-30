//
//  NavigationBarView.swift
//  TouchDown
//
//  Created by KurbanAli on 30/11/21.
//

import SwiftUI

struct NavigationBarView: View {
    //  MARK: - Properties
    
    @State private var isAnimating: Bool = false
    
    //  MARK: - Body

    var body: some View {
        HStack {
            Button {
                
            } label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            }//:Button
            
            Spacer()
            
            LogoView()
                .opacity(isAnimating ? 1 : 0)
                .offset(x: 0, y: isAnimating ? 0 : -25)
                .onAppear(perform: {
                    withAnimation(.easeOut(duration: 0.5)){
                        isAnimating.toggle()
                    }
                })
            Spacer()
            
            ZStack {
                Button {
                    
                } label: {
                    Image(systemName: "cart")
                        .font(.title)
                        .foregroundColor(.black)
                }
                
                Circle()
                    .fill(Color.red)
                    .frame(width: 14, height: 14, alignment: .center)
                    .offset(x: 13, y: -10)
            }//:ZStack
        }//:HStack
    }
}

//  MARK: - Preview

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
