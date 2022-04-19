//
//  SearchView.swift
//  Weather_App
//
//  Created by Bartek Wanot on 18/04/2022.
//

import SwiftUI

struct SearchView: View {
    @EnvironmentObject var navigationManager: NavigationManager
    var body: some View {
        VStack {
            VStack(spacing: 25){
                TextField("Type city name", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    .textFieldStyle(.roundedBorder)
                    .padding(.horizontal, 14.0)
                    .cornerRadius(50)
                    .symbolVariant(.fill)
                    .colorInvert()
                HStack{
                    Button {
                        navigationManager.mainScreen()
                    } label :{
                        Label("Back", systemImage:"arrow.left")
                    }
                    .buttonStyle(.bordered)
                    .padding(.horizontal, 4.0)
                    .cornerRadius(50)
                    .symbolVariant(.fill)
                    .foregroundColor(.white)
                    Button {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    } label :{
                        Label("Search city", systemImage:     "magnifyingglass")
                    }
                    .buttonStyle(.borderedProminent)
                    .padding(.horizontal, 4.0)
                    .cornerRadius(50)
                    .symbolVariant(.fill)
                    .foregroundColor(.white)
                }
            }.padding(EdgeInsets(top: 100, leading: 0, bottom: 0, trailing: 0))
            Spacer(minLength: 40)
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

