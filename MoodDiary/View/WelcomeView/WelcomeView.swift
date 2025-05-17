//
//  WelcomeView.swift
//  MoodDiary
//
//  Created by anikin02 on 12.04.2025.
//

import SwiftUI

struct WelcomeView: View {
  var body: some View {
    ZStack(alignment: .bottom){
      VStack{
        TopBarWelcomeView()
        Spacer()
        ScrollView{
          
        }
      }
      
      Button {
        print("Print something")
      } label: {
        HStack {
          Image(systemName: "plus.circle.fill")
            .resizable()
            .frame(width: 25, height: 25)
          Text("Record Today's Mood").font(.system(size: 20, weight: .black))
        }
        .padding(.vertical, 10)
        .padding(.horizontal, 20)
        .background(.black)
        .clipShape(.capsule)
      }
    }
  }
}

struct TopBarWelcomeView: View {
  var body: some View {
    HStack{
      Spacer()
      Spacer()
      Spacer()
      Spacer()
      
      Button(action: previousMonth) {
        Image(systemName: "arrow.left")
          .font(.title)
          .bold()
          .tint(.black)
      }
      
      Text("Mar, 2025")
        .font(.title)
        .bold()
      
      Button(action: nextMonth) {
        Image(systemName: "arrow.right")
          .font(.title)
          .bold()
          .tint(.black)
      }
      
      Spacer()
      
      Image(systemName: "chart.bar.fill")
        .font(.title)
        .bold()
        .tint(.black)
      
      Spacer()
    }
    
  }
  
  func previousMonth() {
    
  }
  
  func nextMonth() {
    
  }
}
