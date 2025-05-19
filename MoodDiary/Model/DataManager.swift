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
  
  private var moodStates: [MoodState] = [MoodState(date: .now, state: .happy, description: "Мне пришли ДЕНЬГИ"), MoodState(date: .now, state: .angry, description: "Мне не пришли деньги деньги деньги деньги деньги деньги деньги деньги деньги деньги "), MoodState(date: .now, state: .normal, description: "Just kidding..."), MoodState(date: .now, state: .angry, description: "Мне не пришли деньги деньги деньги деньги деньги деньги деньги деньги деньги деньги "), MoodState(date: .now, state: .angry, description: "FCK"), MoodState(date: .now, state: .angry, description: "Мне не пришли деньги деньги деньги деньги деньги деньги деньги деньги деньги деньги ")]
  
  func addMoodState(moodState: MoodState) {
    moodStates.insert(moodState, at: 0)
  }
  
  func updateMoodState(moodState: MoodState) {
    if let index = moodStates.firstIndex(of: moodState) {
      moodStates[index] = moodState
    }
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
