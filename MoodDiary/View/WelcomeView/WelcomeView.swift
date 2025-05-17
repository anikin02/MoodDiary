//
//  WelcomeView.swift
//  MoodDiary
//
//  Created by anikin02 on 12.04.2025.
//

import SwiftUI
import Foundation

struct WelcomeView: View {
  var body: some View {
    ZStack(alignment: .bottom){
      VStack{
        TopBarWelcomeView()
        Spacer()
        ScrollView{
          MoodCardView()
          MoodCardView()
          MoodCardView()
          MoodCardView()
        }
        .padding(10)
        .scrollIndicators(.hidden)
      }
      
      Button {
        print("Print something")
      } label: {
        HStack {
          Image(systemName: "plus.circle.fill")
            .resizable()
            .frame(width: 25, height: 25)
          Text("Record Today's Mood")
            .font(.system(size: 20, weight: .black))
        }
        .padding(.vertical, 10)
        .padding(.horizontal, 20)
        .background(.black)
        .clipShape(.capsule)
      }
    }
  }
}

struct MoodCardView: View {
  let moodState = MoodState(date: .now, state: .angry, description: "Мне не пришли деньги деньги деньги деньги деньги деньги деньги деньги деньги деньги ")
  
  var body: some View {
    VStack{
      Text("😡")
        .font(.system(size: 80))
      Text(moodState.description)
        .multilineTextAlignment(.center)
        .lineLimit(2)
      HStack {
        Spacer()
        Text(moodState.getTime())
      }
    }
    .frame(width: .infinity)
    .padding(15)
    .background(Color.gray.opacity(0.2))
    .clipShape(.rect(cornerRadius: 20))
    .padding(.horizontal, 10)
    
    
    
  }
  
}
