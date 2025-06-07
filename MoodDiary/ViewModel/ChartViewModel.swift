//
//  ChartViewModel.swift
//  MoodDiary
//
//  Created by Данил Аникин on 31.05.2025.
//

import SwiftUI

class ChartViewModel: ObservableObject {
  @Published var data: [ChartItem] = []
  
  func setData() {
    var emojiCounts: [String : Int] = [:]
    
    for item in DataManager.shared.getMoodStates() {
      if let emojiCount = emojiCounts[item.state.rawValue] {
        emojiCounts[item.state.rawValue] = emojiCount + 1
      } else {
        emojiCounts[item.state.rawValue] = 1
      }
    }
    
    for (emoji, count) in emojiCounts {
      data.append(ChartItem(emoji: emoji, count: count))
    }
  }
}

struct ChartItem {
  let emoji: String
  let count: Int
}
