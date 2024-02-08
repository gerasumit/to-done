//
//  MainListView.swift
//  ToDone
//
//  Created by Sumit Gera on 08/02/24.
//

import SwiftUI

var items: [Item] = [
  Item(id: "1", value: "Apples", status: .pending),
  Item(id: "2", value: "Bananas", status: .pending),
  Item(id: "3", value: "Oranges", status: .pending),
  Item(id: "4", value: "Toothpaste", status: .pending),
  Item(id: "5", value: "Brush", status: .pending),
]

struct MainListView: View {
    var body: some View {
      List(items) { item in
        ItemView(item: item)
      }.listStyle(.plain)
    }
}

struct MainListView_Previews: PreviewProvider {
    static var previews: some View {
        MainListView()
    }
}
