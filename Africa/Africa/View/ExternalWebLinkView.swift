//
//  ExternalWebLinkView.swift
//  Africa
//
//  Created by KurbanAli on 22/11/21.
//

import SwiftUI

struct ExternalWebLinkView: View {
    
    //  MARK: - Properties
    
    let animal: Animal
    
    //  MARK: - Body

    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wekipedia")
                
                Spacer()
                
                Group {
                    Image(systemName: "arrow.up.right.square")
                    
                    Link(animal.name,destination: (URL(string: animal.link) ?? URL(string: "https://wekipedia.org"))!)
                }
                .foregroundColor(.accentColor)
            }//:HStack
        }//:GroupBox
    }
}

//  MARK: - Preview
struct ExternalWebLinkView_Previews: PreviewProvider {
    static var previews: some View {
        ExternalWebLinkView(animal: DummyData.animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
