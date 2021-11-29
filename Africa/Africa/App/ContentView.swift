//
//  ContentView.swift
//  Africa
//
//  Created by KurbanAli on 17/11/21.
//

import SwiftUI

struct ContentView: View {
    //  MARK: - Properties
    
    let animals: [Animal] = Bundle.main.decode("animals.json")
    let haptics = UIImpactFeedbackGenerator (style: .medium)
    
    @State private var isGridViewactive: Bool = false
    @State private var gridLayout: [GridItem] = [GridItem(.flexible())]
    @State private var gridColumn = 1
    @State private var toolBarIcon = "square.grid.2x2"
    
    private var gridLayoutForTableView: [GridItem] = [GridItem(.flexible())]
    
    //  MARK: - Functions
    
    func gridSwitch() {
        gridLayout = Array(repeating: .init(.flexible()), count: gridLayout.count % 3 + 1)
        gridColumn = gridLayout.count
        
        switch gridColumn {
        case 1:
            toolBarIcon = "square.grid.2x2"
        case 2:
            toolBarIcon = "square.grid.3x2"
        case 3:
            toolBarIcon = "rectangle.grid.1x2"
        default:
            toolBarIcon = "square.grid.2x2"
        }
    }
    
    //  MARK: - Body

    var body: some View {
        
        NavigationView {
            Group {
                if !isGridViewactive {
                    //  MARK: - ListView using LIST
//                    List {
//                        CoverImageView()
//                            .frame(height: 300)
//                            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
//
//                        ForEach(animals) { animal in
//                            NavigationLink(destination: AnimalDetailView(animal: animal)) {
//                                AnimalListItemView(animal: animal)
//                            }//:NavigationLink
//                        }
//                        .padding(.horizontal, -25)
//
//                        CreditsView()
//                            .modifier(CenterModifier())
//
//                    }//:List
                                        
                    //  MARK: - ListView using LIST

                    //  MARK: - ListView using LazyVGrid
                    ScrollView(.vertical, showsIndicators: false) {
                        CoverImageView()
                            .frame(height: 300)
                        LazyVGrid (columns: gridLayoutForTableView, alignment: .center, spacing: 10) {
                            ForEach(animals) { animal in
                                NavigationLink(destination: AnimalDetailView(animal: animal)) {
                                    AnimalListItemView(animal: animal)
                                }//:NavigationLink
                            }
                        }
                        .padding()
                        CreditsView()
                    }
                    //  MARK: - ListView using LazyVGrid

                    
                } else {
                    ScrollView(.vertical, showsIndicators: false) {
                        LazyVGrid (columns: gridLayout, alignment: .center, spacing: 10) {
                            ForEach(animals) { animal in
                                NavigationLink(destination: AnimalDetailView(animal: animal)) {
                                    AnimalGridItemView(animal: animal)
                                }
                            }
                        }
                        .padding()
                        .animation(.easeIn)
                    }//:ScrollView
                }//:if else
            }//:Group
            .navigationBarTitle("Africa", displayMode: .large)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack(spacing: 16) {
                        Button {
                            print("ListView")
                            isGridViewactive = false
                            haptics.impactOccurred()
                        } label: {
                            Image(systemName: "square.fill.text.grid.1x2")
                                .font(.title2)
                                .foregroundColor(isGridViewactive ? .primary : .accentColor)
                        }
                        
                        Button {
                            print("GridView")
                            haptics.impactOccurred()
                            if isGridViewactive {
                                gridSwitch()
                            }
                            isGridViewactive = true

                            
                        } label: {
                            Image(systemName: toolBarIcon)
                                .font(.title2)
                                .foregroundColor(isGridViewactive ? .accentColor : .primary)
                        }
                    }
                }
            }
        } //: NavigationView
    }
}


//  MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
