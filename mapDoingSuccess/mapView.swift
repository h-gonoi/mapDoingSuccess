//
//  mapView.swift
//  mapDoingSuccess
//
//  Created by 五ノ井裕輝 on 2020/11/03.
//  Copyright © 2020 Hiroki Gonoi. All rights reserved.
//

import SwiftUI
import MapKit

struct mapView: View {
    @State private var searchText = ""
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 35.655164046, longitude: 139.740663704), span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))

    var body: some View {
        ZStack {
            MapView()
                .edgesIgnoringSafeArea(.all)
        }
    }
}
struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }

    func updateUIView(_ uiView: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(
            latitude: 35.655164046, longitude: 139.740663704)
        let span = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
}

struct mapView_Previews: PreviewProvider {
    static var previews: some View {
        mapView()
    }
}
