//
//  MoodStateViewModel.swift
//  MoodDiary
//
//  Created by anikin02 on 18.05.2025.
//

import Foundation

class MoodStateViewModel: ObservableObject {
  
  @Published private var moodState: MoodState?
  @Published var state: Mood = .normal
  @Published var description: String = ""
  @Published var date: Date = .now
  @Published var tags: [Tag] = []
  
  init(moodState: MoodState? = nil) {
    if let moodState = moodState {
      self.moodState = moodState
      self.state = moodState.state
      self.date = moodState.date
      self.description = moodState.description
    }
  }
  
  func changeMoodState(state: Mood) {
    self.state = state
  }
  
  func updateTags(tag: Tag) {
    if let index = tags.firstIndex(of: tag) {
      tags.remove(at: index)
    } else {
      tags.append(tag)
    }
  }
  
  func isTagSelected(tag: Tag) -> Bool {
    if tags.contains(tag) {
      return true
    } else {
      return false
    }
  }
  
  func saveMoodState() {
    if moodState != nil {
      let moodState = MoodState(date: date, state: state, description: description)
      DataManager.shared.updateMoodState(moodState: moodState)
    } else {
      let moodState = MoodState(date: date, state: state, description: description)
      DataManager.shared.addMoodState(moodState: moodState)
    }
    moodState = nil
    state = .normal
    description = ""
    tags = []
  }
}
