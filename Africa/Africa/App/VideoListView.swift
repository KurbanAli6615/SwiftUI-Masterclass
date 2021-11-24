//
//  VideoListView.swift
//  Africa
//
//  Created by KurbanAli on 17/11/21.
//

import SwiftUI

struct VideoListView: View {
    //  MARK: - Properties
    
    @State var videos: [Video] = DummyData.videos
    
    let hapticImpect = UIImpactFeedbackGenerator(style: .medium)
    
    //  MARK: - Body

    var body: some View {
        NavigationView {
            List {
                ForEach(videos) { video in
                    NavigationLink(destination: VideoPlayerView(videoSelected: video.id, videoTitle: video.name)) {
                        VideoListItemView(video: video)
                            .padding(.vertical, 8)
                    }
                }
            }//:List
            .listStyle(InsetGroupedListStyle())
            .padding(.horizontal, -25)
            .navigationBarTitle("Videos", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        videos.shuffle()
                        hapticImpect.impactOccurred()
                    }, label: {
                        Image(systemName: "arrow.2.squarepath")
                    })
                }
            }
        }//:NavigationView
    }
}

//  MARK: - Preview

struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
