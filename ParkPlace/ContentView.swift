//
//  ContentView.swift
//  ParkPlace
//
//  Created by Snehith Nayak on 11/5/22.
//

import SwiftUI
import MapKit


struct MapView: View {
    @State var coordinateRegion = MKCoordinateRegion(
      center: CLLocationCoordinate2D(latitude: 56.948889, longitude: 24.106389),
      span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    
    var body: some View {
      Map(coordinateRegion: $coordinateRegion)
        .edgesIgnoringSafeArea(.all)
    }
}


struct ContentView: View {
    var body: some View {
        MapView()

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        MapView()
    }
}
