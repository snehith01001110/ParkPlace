//
//  ContentView.swift
//  ParkPlace
//
//  Created by Snehith Nayak on 11/5/22.
//

import SwiftUI
import MapKit

struct Marker: Identifiable {
    let id = UUID()
    var location: MapMarker
}

struct MapView: View {
    @State var coordinateRegion = MKCoordinateRegion(
      center: CLLocationCoordinate2D(latitude: 34.41294, longitude: -119.86021),
      span: MKCoordinateSpan(latitudeDelta: 0.001, longitudeDelta: 0.021))
    //center and span for map
    
    var body: some View {
      Map(coordinateRegion: $coordinateRegion,
          annotationItems: markers) { marker in
          marker.location }
        //using coordinateRegion for center and span
        //also uses markers[] as coordinates to pin
       .edgesIgnoringSafeArea(.all) //no idea what this does
        
    }
    
    let markers = [Marker(location: MapMarker(coordinate: CLLocationCoordinate2D(latitude: 34.41293, longitude: -119.86020), tint: .red))]
    //TODO: write function that takes multiple locations to pin on map
    
            
}


struct ContentView: View {
    var body: some View {
        ContentView()
        MapView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        MapView()
    }
}
