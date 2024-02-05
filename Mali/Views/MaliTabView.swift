//
//  ContentView.swift
//  Mali
//
//  Created by Kaiser on 05/02/2024.
//

import SwiftUI

struct MaliTabView: View {
    var body: some View {
      TabView{
        HomeView()
          .tabItem{
            Image(systemName: "house")
            Text("Home")
          }
        
        InvestmentView()
          .tabItem{
            Image(systemName: "chart.xyaxis.line")
            Text("Investment Performance")
          }
        
        AccountView()
          .tabItem{
            Image(systemName: "person.circle")
            Text("My Account")
          }
      }
      .accentColor(Color("brandPrimary"))
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MaliTabView()
    }
}
