//
//  FruitsNutrientsView.swift
//  Fructus
//
//  Created by KurbanAli on 15/11/21.
//

import SwiftUI

struct FruitsNutrientsView: View {
    //  MARK: - Properties
    let nutrients: [String] = ["Energy","Sugar","Fat","Protein","Vitamins","Minerals"]
    
    var fruit: Fruit!
    
    //  MARK: - Body

    var body: some View {
        GroupBox() {
            DisclosureGroup ("Nutritional value per 100g") {
                ForEach(0 ..< nutrients.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }
    }
}

//  MARK: - Preview

struct FruitsNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitsNutrientsView(fruit: fruitsData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
