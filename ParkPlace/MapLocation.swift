//
//  MapLocation.swift
//  ParkPlace
//
//  Created by Snehith Nayak on 11/5/22.
//

import UIKit
import SwiftUI
import CoreLocation

struct City: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}
