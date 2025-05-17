//
//  TopBarWelcomeView.swift
//  MoodDiary
//
//  Created by anikin02 on 17.05.2025.
//

import SwiftUI

struct TopBarWelcomeView: View {
  var body: some View {
    HStack{
      Spacer()
      
      Button {
        
      } label: {
        Image(systemName: "calendar")
          .font(.title)
          .bold()
          .tint(.black)
      }
      
      Spacer()
      
      Text("17 May, 2025")
        .font(.title)
        .bold()
      
      Spacer()
      
      Button {
        
      } label: {
        Image(systemName: "chart.bar.fill")
          .font(.title)
          .bold()
          .tint(.black)
      }
      
      Spacer()
    }
  }
}
