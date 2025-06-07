//
//  ChartsView.swift
//  MoodDiary
//
//  Created by anikin02 on 31.05.2025.
//

import SwiftUI
import Charts

struct ChartsView: View {
  @ObservedObject var viewModel = ChartViewModel()
  var body: some View {
    VStack {
      
      HStack {
        Text("Mood Activity")
          .font(.system(size: 21, weight: .black))
      }
      
      HStack {
        Chart(viewModel.data, id: \.emoji) {
          BarMark(x: .value("State", $0.emoji),
                  y: .value("Count", $0.count)
          )
        }
        .onAppear {
          viewModel.setData()
        }
      }
      .frame(height: 200)
      .padding(.horizontal)
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
  }
}

#Preview {
  ChartsView()
}
