//
//  FruitDetailView.swift
//  Fructus
//
//  Created by KurbanAli on 14/11/21.
//

import SwiftUI

struct FruitDetailView: View {
    
    //  MARK: - Properties
    
    var fruit: Fruit!
    
    //  MARK: - Body
    
    var body: some View {
        NavigationView {
            ScrollView (.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    
                    //  MARK: Header Image
                    
                    FruitHeaderView(fruit: fruit)
                    
                    VStack (alignment: .leading, spacing: 20){
                        
                        //  MARK: Title
                        
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //  MARK: Headline
                        
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        //  MARK:  Nutrient
                        
                        FruitsNutrientsView(fruit: fruit)
                        //  MARK: Subheadlines
                        
                        Text("Learn More about \(fruit.title.uppercased())")
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //  MARK: Description
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        //  MARK: Link
                        
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    }
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                    
                }
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
            }
            .edgesIgnoringSafeArea(.top)
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

//  MARK: - Preview

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}
