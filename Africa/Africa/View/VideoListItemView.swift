//
//  VideoListItem.swift
//  Africa
//
//  Created by KurbanAli on 24/11/21.
//

import SwiftUI

struct VideoListItemView: View {
    
    //  MARK: - Properties
    
    let video:Video
    
    //  MARK: - Body
    var body: some View {
        HStack(spacing: 10) {
            ZStack {
                Image(video.thumbnail)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 80)
                    .cornerRadius(9)
                
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 32)
                    .shadow(radius: 4)
            }//:ZStack
            
            VStack (alignment: .leading, spacing: 10){
                Text(video.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text(video.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.center)
                    .lineLimit(2)
            }
        }//:HStack
    }
}


//  MARK: - Preview

struct VideoListItem_Previews: PreviewProvider {
    static var previews: some View {
        VideoListItemView(video: DummyData.videos.first!)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
