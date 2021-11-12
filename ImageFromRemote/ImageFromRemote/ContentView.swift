//
//  ContentView.swift
//  ImageFromRemote
//
//  Created by KurbanAli on 05/11/21.
//

import SwiftUI

struct ContentView: View {
    private let imageUrl = "https://credo.academy/credo-academy@3x.png"
    
    var body: some View {
        
        //  MARK: - Simple Async Image
        
        //        AsyncImage(url: URL(string: imageUrl))
        
        //  MARK: -  AsyncImage with scale
        
        //        AsyncImage(url: URL(string: imageUrl), scale: 3.0)
        
        //  MARK: -  AsyncImage with placeHolder
        
        //        AsyncImage(url: URL(string: imageUrl)) { image in
        //            image
        //                .imageModifier()
        //        } placeholder: {
        //            Image(systemName: "photo.circle.fill")
        //                .iconModifiers()
        //        }
        //        .padding(40)
        //    }
        
        //  MARK: - AsyncImage PHASE :: SUCCESS || FAILUR || EMPTY
        
        //        AsyncImage(url: URL(string: imageUrl)) { phase in
        //
        //            if let image = phase.image {
        //                image.imageModifier()
        //            } else if phase.error != nil {
        //                Image(systemName: "ant.circle.fill").iconModifiers()
        //            } else {
        //                Image(systemName: "photo.circle.fill").iconModifiers()
        //            }
        //        }
        //        .padding(40)
        
        //  MARK: - Animation
        
        AsyncImage(url: URL(string: imageUrl), transaction: Transaction(animation: .spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0.25))) { phase in
            
            switch phase {
            case .success(let image):
                image
                    .imageModifier()
                    .transition(.scale)
//                    .transition(.slide)
//                    .transition(.move(edge: .bottom))
                    
                
            case .failure(_):
                Image(systemName: "ant.circle.fill").iconModifiers()
                
            case .empty:
                Image(systemName: "ant.circle.fill").iconModifiers()
                
            @unknown default:
                ProgressView()
            }
        }
        .padding(40)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//  MARK: - IMAGE EXTENSION

extension Image {
    func imageModifier() -> some View {
        self
            .resizable()
            .scaledToFit()
    }
    
    func iconModifiers() -> some View {
        self
            .imageModifier()
            .frame(maxWidth: 128)
            .foregroundColor(.purple)
            .opacity(0.5)
    }
}
