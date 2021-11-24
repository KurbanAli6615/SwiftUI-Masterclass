//
//  AnimalDetailView.swift
//  Africa
//
//  Created by KurbanAli on 22/11/21.
//

import SwiftUI

struct AnimalDetailView: View {
    //  MARK: - Properties
    let animal: Animal
    
    //  MARK: - Body
 
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                
               //  MARK: - HeroImage
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                //  MARK: - Title
                
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                    .background(
                        Color.accentColor
                            .frame(width: 130, height: 6)
                            .offset(y: 24)
                    )
                
                //  MARK: - Headline
                
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
                //  MARK: -Gallery
                
                Group {
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
                    
                    InsetGalleryView(animal: animal)
                }
                .padding(.horizontal)
                //  MARK: - Facts
                
                Group {
                    HeadingView(headingImage: "questionmark.circle", headingText: "Did you know ?")
                    
                    InsetFactView(animal: animal)
                }
                
                //  MARK: - Desc
                
                Group {
                    HeadingView(headingImage: "info.circle", headingText: "All about \(animal.name)")
                    
                    Text(animal.description)
                        .multilineTextAlignment(.center)
                        .layoutPriority(1)
                }
                .padding(.horizontal)
                
                //  MARK: -Map
                
                Group {
                    HeadingView(headingImage: "map", headingText: "National Parks")
                    
                    InsetMapView()
                    }
                .padding(.horizontal)
                
                //  MARK: - Link
                
                Group {
                    HeadingView(headingImage: "books.vertical", headingText: "Learn More")
                    ExternalWebLinkView(animal: animal)
                }
                .padding(.horizontal)
                .padding(.bottom, 5)
            } //: VStack
            .navigationBarTitle("Learn about \(animal.name)", displayMode: .inline)
        } //: ScrollView
    }
}

//  MARK: - Preview

struct AnimalDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            AnimalDetailView(animal: DummyData.animals[0]) 
        }
    }
}
