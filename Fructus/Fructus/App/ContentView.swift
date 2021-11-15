//
//  ContentView.swift
//  Fructus
//
//  Created by KurbanAli on 14/11/21.
//

import SwiftUI

struct ContentView: View {
    //  MARK: - Properties
    
    @State private var isShowingSetting: Bool = false
    
    var fruits: [Fruit] = fruitsData
    
    //  MARK: - Body
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                    }
                }
                
                .padding(.horizontal, -20)
            }
            .navigationTitle("Fruits")
            .navigationBarItems(trailing: Button(action: {
                isShowingSetting = true
            }, label: {
                Image(systemName: "slider.horizontal.3")
            }))
            .sheet(isPresented: $isShowingSetting){
                SettingsView()
            }
        }
    }
}

//  MARK: - Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
