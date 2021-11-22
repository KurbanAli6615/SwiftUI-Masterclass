//
//  InsetGalleryView.swift
//  Africa
//
//  Created by KurbanAli on 22/11/21.
//

import SwiftUI

struct InsetGalleryView: View {
    //  MARK: - Properties

    let animal:Animal
    
    //  MARK: - Body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack (alignment: .center, spacing: 15){
                ForEach(animal.gallery, id:\.self) { image in
                    Image(image)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                    .cornerRadius(12)
                }
            }
        }//:HStack
    }
}

//  MARK: - Preview

struct InsetGalleryView_Previews: PreviewProvider {
    static var previews: some View {
        InsetGalleryView(animal: DummyData.animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
