//
//  MainListView.swift
//  ToDone
//
//  Created by Sumit Gera on 08/02/24.
//

import SwiftUI

var items: [Item] = []

struct MainListView: View {
  @State private var newTask: String = ""
  
  
  var body: some View {
    VStack {
      HStack {
        TextField("Buying groceries...", text: $newTask)
          .frame(minHeight: 64)
          .textFieldStyle(RoundedBorderTextFieldStyle()).padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 16))
        Button("Add Item", action: addItem).buttonStyle(BorderedProminentButtonStyle())
      }.padding()
      List(items) { item in
        ItemView(item: item)
      }.listStyle(.plain)
    }
  }
  
  func addItem() {
    let _task: String = newTask
    newTask = ""
    items.append(Item(id: _generateNewId(), value: _task, status: .pending))
  }
  
  func _generateNewId() -> String {
    return "\(items.count)"
  }
}

struct MainListView_Previews: PreviewProvider {
  static var previews: some View {
    MainListView()
  }
}
