//
//  MoodStateView.swift
//  MoodDiary
//
//  Created by anikin02 on 17.05.2025.
//

import SwiftUI

struct MoodStateView: View {
  @ObservedObject var viewModel: MoodStateViewModel = .init()
  @Environment(\.dismiss) var dismiss
  var body: some View {
    ZStack(alignment: .bottom){
      VStack(spacing: 20){
        VStack {
          Text("How are you feeling?")
            .font(.system(size: 21, weight: .black))
          HStack {
            ForEach(Mood.allCases, id: \.self) { state in
              Button {
                viewModel.changeMoodState(state: state)
              } label: {
                VStack {
                  Text(state.rawValue)
                    .font(.system(size: 60, weight: .black))
                    .overlay(
                      Color.gray.opacity(state == viewModel.state ? 0 : 0.5)
                        .mask(Text(state.rawValue)
                          .font(.system(size: 60, weight: .black)))
                    )
                }
              }
              
            }
          }
        }
        VStack(alignment: .leading) {
          Text("What's affecting your mood?")
            .font(.system(size: 17, weight: .black))
          HStack {
            ButtonTagView(viewModel: viewModel, tag: .relationships)
            ButtonTagView(viewModel: viewModel, tag: .family)
            ButtonTagView(viewModel: viewModel, tag: .health)
          }
          HStack {
            ButtonTagView(viewModel: viewModel, tag: .work)
            ButtonTagView(viewModel: viewModel, tag: .education)
            ButtonTagView(viewModel: viewModel, tag: .finances)
          }
          HStack {
            ButtonTagView(viewModel: viewModel, tag: .hobbies)
            ButtonTagView(viewModel: viewModel, tag: .music)
            ButtonTagView(viewModel: viewModel, tag: .drink)
          }
          HStack {
            ButtonTagView(viewModel: viewModel, tag: .weather)
            ButtonTagView(viewModel: viewModel, tag: .travel)
          }
        }
        .frame(maxWidth: .infinity)
        VStack(alignment: .leading) {
          Text("Let's write about it:")
            .font(.system(size: 17, weight: .black))
          TextEditor(text: $viewModel.description)
            .padding(5)
            .background(Color(.systemGray6))
        }
        Spacer()
      }
      .padding(.horizontal, 20)
    }
    .frame(maxHeight: .infinity)
    
    Button {
      viewModel.saveMoodState()
      dismiss()
    } label: {
      HStack {
        Image(systemName: "plus.circle.fill")
          .resizable()
          .frame(width: 25, height: 25)
        Text("Save Mood")
          .font(.system(size: 20, weight: .black))
      }
      .padding(.vertical, 10)
      .padding(.horizontal, 20)
      .background(.black)
      .clipShape(.capsule)
    }
  }
}

struct ButtonTagView: View {
  @ObservedObject var viewModel: MoodStateViewModel
  let tag: Tag
  var body: some View {
    Button {
      viewModel.updateTags(tag: tag)
    } label: {
      Text(tag.rawValue)
        .font(.system(size: 15, weight: .black))
        .padding(.vertical, 10)
        .padding(.horizontal, 20)
        .background(viewModel.isTagSelected(tag: tag) ? .black : .gray)
        .clipShape(.capsule)
    }
  }
}
