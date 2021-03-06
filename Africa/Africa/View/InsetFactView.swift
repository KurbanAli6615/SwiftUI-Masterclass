//
//  InsetFactView.swift
//  Africa
//
//  Created by KurbanAli on 22/11/21.
//

import SwiftUI

struct InsetFactView: View {
    
    //  MARK: - Properties
    
    let animal: Animal
    
    //  MARK: - Body

    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact , id:\.self) { item in
                    Text(item)
                }
            } //:TabView
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        }//:GroupBox
    }
}

//  MARK: - Preview

struct InsetFactView_Previews: PreviewProvider {
    static var previews: some View {
        InsetFactView(animal: DummyData.animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
