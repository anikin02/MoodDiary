//
//  MonthView.swift
//  MoodDiary
//
//  Created by anikin02 on 17.05.2025.
//
import SwiftUI

struct MonthView: View {
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

struct TopBarMonthView: View {
  var body: some View {
    HStack{
      Spacer()
      
      Image(systemName: "calendar")
        .font(.title)
        .bold()
        .tint(.black)
      
      Spacer()
      Spacer()
      
      Button(action: previousMonth) {
        Image(systemName: "arrow.left")
          .font(.title)
          .bold()
          .tint(.black)
      }
      
      Text("17 May, 2025")
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
