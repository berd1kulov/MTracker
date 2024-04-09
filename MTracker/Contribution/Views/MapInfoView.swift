//
//  MapInfoView.swift
//  MTracker
//
//  Created by Bakdaulet on 09.04.2024.
//

import SwiftUI
import MapKit

struct MapInfoView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    
    var body: some View {
        ZStack {
            Map(coordinateRegion: $region)
                .frame(height: 100)
                .clipShape(RoundedRectangle(cornerRadius: 16))
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color("base50"), lineWidth: 5)
                )
            HStack {
                Image("coordinate_pin")
                Text("Где найти")
                    .font(.system(size: 13))
            }
            .padding(4)
            .background(Color("base50"))
            .clipShape(RoundedRectangle(cornerRadius: 16))
        }
    }
}

#Preview {
    MapInfoView()
}
