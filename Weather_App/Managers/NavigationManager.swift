//
//  NavigationManager.swift
//  Weather_App
//
//  Created by Bartek Wanot on 19/04/2022.
//

import Foundation

class NavigationManager: NSObject, ObservableObject {
    
    
    
    @Published var _mainScreen = true
    @Published var _chooseByName = false
    @Published var _chooseByMap = false
    
    @Published var _chosenCity: String = ""
    @Published var _chosenByName = false
    override init() {
        super.init()
    }
    
    func chooseByName(){
        _chooseByName = true
        _chooseByMap = false
        _mainScreen = false
    }
    func mainScreen(){
        _chooseByName = false
        _chooseByMap = false
        _mainScreen = true
    }
    
    func setByName(cityName: String)
    {
        _chosenCity = cityName
        _chosenByName = true
        mainScreen()
    }
    
}
