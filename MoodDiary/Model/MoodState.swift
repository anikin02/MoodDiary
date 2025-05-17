//
//  MoodState.swift
//  MoodDiary
//
//  Created by anikin02 on 17.05.2025.
//

import Foundation

class MoodState: Equatable {
  let date: Date
  let state: State
  let description: String
  
  init(date: Date, state: State = .normal, description: String) {
    self.date = date
    self.state = state
    self.description = description
  }
  
  static func == (lhs: MoodState, rhs: MoodState) -> Bool {
    return (lhs.date == rhs.date)
    && (rhs.state == lhs.state)
    && (rhs.description == lhs.description)
  }
  
  func getTime() -> String {
    let formatter = DateFormatter()
    formatter.dateFormat = "HH:mm"
    return formatter.string(from: date)
  }
}

enum State {
  case normal
  case sad
  case happy
  case angry
  case surprised
  case scared
}
