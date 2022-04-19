//
//  ContentView.swift
//  Weather_App
//
//  Created by RMS on 10/03/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject var locationManager = LocationManager()
    @StateObject var navigationManager = NavigationManager()
    var weatherManager = WeatherManager()
    @State var weather: ResponseBody?

    
    var body: some View {
        VStack {
            if navigationManager._chooseByName
            {
                SearchView()
                    .environmentObject(navigationManager)
            }
            else {
                if let location = locationManager.location {
                    if let weather = weather {
                        WeatherView(weather: weather)
                            .environmentObject(navigationManager)
                    }
                    else{
                        LoadingView()
                            .task {
                                do{
                                    weather = try await weatherManager.getCurrentWeather(latitude:  location.latitude, lonigtude: location.longitude)
                
                                }catch{
                                    print("Error getting weather: \(error)")
                                }
                            }
                
                    }
                 } else {
                     if locationManager.isLoading {
                         LoadingView()
                     } else {
                         WelcomeView()
                             .environmentObject(locationManager)
                     }
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
