//
//  DataManager.swift
//  MoodDiary
//
//  Created by anikin02 on 17.05.2025.
//

import Foundation

class DataManager {
  private init() {}
  static let shared = DataManager()
  
  private var moodStates: [MoodState] = []
  
  func addMoodState(moodState: MoodState) {
    moodStates.append(moodState)
  }
  
  func getMoodStates() -> [MoodState] {
    return moodStates
  }
  
  func deleteMoonState(moodState: MoodState) {
    if let index = moodStates.firstIndex(of: moodState) {
      moodStates.remove(at: index)
    }
  }
}
