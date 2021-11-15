//
//  SourceLinkView.swift
//  Fructus
//
//  Created by KurbanAli on 14/11/21.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox () {
            HStack {
                Text("Content souce")
                Spacer()
                Link("Wekipedia", destination: URL(string: "https://wekipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
