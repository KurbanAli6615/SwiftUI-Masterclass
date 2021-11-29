//
//  GaalleryView.swift
//  Africa
//
//  Created by KurbanAli on 17/11/21.
//

import SwiftUI

struct GalleryView: View {
   
    //  MARK: - Properties
    
    @State private var selectedAnimal: String = "lion"
    
    let animals: [Animal] = DummyData.animals
    let haptics = UIImpactFeedbackGenerator(style: .medium)
//    let gridLatout: [GridItem] = [
//        GridItem(.flexible()),
//        GridItem(.flexible()),
//        GridItem(.flexible())
//    ]
        
    @State private var gridLayout: [GridItem] = [GridItem(.flexible())]
    @State private var gridColumn: Double = 3.0
    
    func gridSwitch() {
        gridLayout = Array(repeating: .init(.flexible()), count: Int(gridColumn))
    }
                                           
    //  MARK: - Body

    var body: some View {
        ScrollView (.vertical, showsIndicators: false) {
            //  MARK: - GRID
            VStack (alignment: .center, spacing: 30) {
                
                Image(selectedAnimal)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .stroke(Color.white, lineWidth: 8)
                    )
                
                Slider(value: $gridColumn, in: 2...4, step: 1)
                    .padding(.horizontal)
                    .onChange(of: gridColumn) { value in
                        gridSwitch()
                    }
                
                LazyVGrid (columns: gridLayout, alignment: .center, spacing: 10) {
                    ForEach(animals) { item in
                        Image(item.image)
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .overlay(
                                Circle()
                                    .stroke(Color.white, lineWidth: 2)
                            )
                            .onTapGesture {
                                selectedAnimal = item.image
                                haptics.impactOccurred()
                            }
                    }
                }
                .animation(.easeIn)
                .onAppear {
                    gridSwitch()
                }
            }//:VStack
            .padding(.horizontal, 10)
            .padding(.vertical, 15)

        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(MotionAnimationView())
    }
}

//  MARK: - Preview

struct GaalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
