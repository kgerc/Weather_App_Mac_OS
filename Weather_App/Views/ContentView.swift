//
//  ContentView.swift
//  Weather_App
//
//  Created by RMS on 10/03/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject var locationManager = LocationManager()
    
    var body: some View {
        VStack {
            
            if let location = locationManager.location {
            Text("Your coordinates are:\(location.longitude),\(location.latitude)")
             } else {
                 if locationManager.isLoading {
                     ProgressView()
                 } else {
                     WelcomeView()
                         .environmentObject(locationManager)
                 }
            }
        }.background(Color(hue: 0.678, saturation: 0.845, brightness: 0.406))
            .preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
