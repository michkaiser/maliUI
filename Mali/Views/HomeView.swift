//
//  HomeView.swift
//  Mali
//
//  Created by Kaiser on 05/02/2024.
//

import SwiftUI

struct HomeView: View {
  var body: some View {
    NavigationView{
      ScrollView(.vertical, showsIndicators:false){
//        HStack{
//          Text("Good Morning, Manasseh")
//          Spacer()
//          Image(systemName: "bell.fill")
//        }
        VStack(alignment: .center, spacing: 20){
          Text("Investment Balance")
            .fontWeight(.light)
          HStack {
            Text("KES 100.04")
              .font(.title)
              .fontWeight(.semibold)
            Image(systemName: "eye")
          }
          Text("M-PESA BALANCE: 2000.0")
            .fontWeight(.light)
          HStack{
            VStack(spacing: 5){
              Text("Interest Earned Yesterday")
                .font(.footnote)
                .fontWeight(.light)
              Text("KES 0.02")
                .font(.footnote)
                .fontWeight(.black)
            }
            Spacer()
            VStack(spacing: 5){
              Text("Interest Rate (Last 24hrs)")
                .font(.footnote)
                .fontWeight(.light)
              Text("8.10%")
                .font(.footnote)
                .fontWeight(.black)
            }
          }
          HStack{
            Button{
              
            } label: {
              Label("Invest", systemImage: "chart.xyaxis.line")
            }
            .frame(width: 150, height: 30)
            .background(Color.white)
            .foregroundColor(Color("brandPrimary"))
            .cornerRadius(40)
            
            Spacer()
            Button{
              
            } label: {
              Label("Withdraw", systemImage: "arrow.down.app")
            }
            //          .padding(EdgeInsets(top: 5, leading: 35, bottom: 5, trailing: 35))
            .frame(width: 150, height: 30)
            .background(Color("brandPrimary"))
            .overlay(
              RoundedRectangle(cornerRadius: 21.0)
                .strokeBorder(Color.white, lineWidth: 2)
            )
            .foregroundColor(Color.white)
            .cornerRadius(40)
          }
        }
        .padding(2)
        .foregroundColor(.white)
        .padding(20)
        .background(Color("brandPrimary"))
        .cornerRadius(20)
        Spacer(minLength: 500)
        VStack{
          Text("Placeholder")
        }
      }
      .padding(15)
      .navigationTitle("MALI")
      .navigationBarItems(trailing: Button(action: {
            print("Button tapped")
          }) {
            Image(systemName: "x.circle")
              .foregroundColor(.green)
          })
    }
  }
  
}

struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView()
  }
}
