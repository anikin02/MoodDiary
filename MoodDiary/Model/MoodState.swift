//
//  MoodState.swift
//  MoodDiary
//
//  Created by anikin02 on 17.05.2025.
//

import Foundation

class MoodState: Equatable, Identifiable {
  let date: Date
  let state: Mood
  let description: String
  let tags: [Tag]
  
  init(date: Date, state: Mood = .normal, description: String, tags: [Tag] = []) {
    self.date = date
    self.state = state
    self.description = description
    self.tags = tags
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

enum Mood: String, CaseIterable {
  case scared = "😱"
  case sad = "😢"
  case normal = "🙂"
  case happy = "😊"
  case angry = "😡"
}

enum Tag: String, CaseIterable {
  case work = "Work"
  case family = "Family"
  case hobbies = "Hobbies"
  case finances = "Finances"
  case health = "Health"
  case relationships = "Relationships"
  case weather = "Weather"
  case music = "Music"
  case education = "Education"
  case drink = "Drink"
  case travel = "Travel"
}
