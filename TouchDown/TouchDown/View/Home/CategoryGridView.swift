//
//  CategoryGridView.swift
//  TouchDown
//
//  Created by KurbanAli on 30/11/21.
//

import SwiftUI

struct CategoryGridView: View {
    //  MARK: - Properties
    
    //  MARK: - Body

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLatout, alignment: .center, spacing: columnSpacing, pinnedViews: []) {
                Section(
                    header: SectionView(rotateClockWise: false),
                    footer:SectionView(rotateClockWise: true)
                ) {
                    ForEach(DataHalper.category) { category in
                        CategoryItemView(category: category)
                    }
                }
            }
            .frame(height: 155)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        }//:ScrollView
    }
}

//  MARK: - Preview

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
