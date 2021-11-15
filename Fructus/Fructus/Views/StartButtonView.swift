//
//  StartButtonView.swift
//  Fructus
//
//  Created by KurbanAli on 14/11/21.
//

import SwiftUI

struct StartButtonView: View {
    //  MARK: - Poroperties
    @AppStorage("isOnboarding") var isOnboarding: Bool?

    //  MARK: - Body
    var body: some View {
        Button(action: {
            isOnboarding = false
        }, label: {
            HStack(spacing:8) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
        })
        .accentColor(Color.white)
        .padding(.horizontal,16)
        .padding(.vertical, 10)
        .background(
            Capsule()
                .strokeBorder(
                    Color.white,
                    lineWidth: 1.25
                )
        )
    }
}


//  MARK: - Preview

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
