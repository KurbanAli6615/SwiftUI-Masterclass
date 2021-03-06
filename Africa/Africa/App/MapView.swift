//
//  MapView.swift
//  Africa
//
//  Created by KurbanAli on 17/11/21.
//

import SwiftUI
import MapKit


struct MapView: View {
    //  MARK: - Properties
    
    @State private var region: MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        
        var mapZommLavel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZommLavel)
        
        return mapRegion
    }()
    
    let locations: [NationalParkLocation] = DummyData.locations
    
    //  MARK: - Body

    var body: some View {
        //  MARK: - BasicMap
        Map(coordinateRegion: $region, annotationItems: locations, annotationContent: { item in
            
            //            MapPin(coordinate: item.location, tint: .accentColor)
            
            //            MapMarker(coordinate: item.location, tint: .accentColor)
            
            //            MapAnnotation(coordinate: item.location) {
            //                Image(Images.logo)
            //                    .resizable()
            //                    .scaledToFit()
            //                    .frame(width: 32, height: 32, alignment: .center)
            //            }
            
            MapAnnotation(coordinate: item.location) {
                MapAnnotationView(location: item)
            }
            
        }) //:Map
            .overlay(
                HStack(alignment: .center, spacing: 12) {
                    Image(Images.compass)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 48, height: 48, alignment: .center)
                    
                    VStack (alignment: .leading, spacing: 3) {
                        Divider()
                        HStack {
                            Text("Latitude")
                                .font(.footnote)
                                .fontWeight(.bold)
                                .foregroundColor(.accentColor)

                            Spacer()
                            
                            Text("\(region.center.latitude)")
                                .font(.footnote)
                        }
                        HStack {
                            Text("Longitude")
                                .font(.footnote)
                                .fontWeight(.bold)
                                .foregroundColor(.accentColor)
                                
                            Spacer()
                            
                            Text("\(region.center.longitude)")
                                .font(.footnote)
                                
                        }
                    }
                    
                }//:HStack
                    .padding(.vertical, 12)
                    .padding(.horizontal, 12)
                    .background(
                        Color.black
                            .cornerRadius(8)
                            .opacity(0.6)
                    )
                        .padding()
                
                    , alignment: .top
            )
    }
}

//  MARK: - Preview

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
