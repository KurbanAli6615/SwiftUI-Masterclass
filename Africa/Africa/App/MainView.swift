//
//  MainView.swift
//  Africa
//
//  Created by KurbanAli on 17/11/21.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem{
                    Image(systemName: "square.grid.2x2")
                    Text("Browse")
                }
            
            VideoListView()
                .tabItem{
                    Image(systemName: "play.rectangle")
                    Text("Watch")
                }
            
            MapView()
                .tabItem{
                    Image(systemName: "map")
                    Text("Locaations")
                }
            
            GalleryView()
                .tabItem{
                    Image(systemName: "play.rectangle")
                    Text("Watch")
                }
            
        }//: TAB
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
