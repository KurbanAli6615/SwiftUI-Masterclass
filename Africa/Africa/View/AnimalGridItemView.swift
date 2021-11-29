//
//  AnimalGridItemView.swift
//  Africa
//
//  Created by KurbanAli on 29/11/21.
//

import SwiftUI

struct AnimalGridItemView: View {
    
    //  MARK: - Properties
    let animal: Animal
    
    //  MARK: - Body

    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

//  MARK: - Preview

struct AnimalGridItemView_Previews: PreviewProvider {
    static var previews: some View {
        AnimalGridItemView(animal: DummyData.animals.first!)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
