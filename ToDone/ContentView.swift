//
//  ContentView.swift
//  ToDone
//
//  Created by Sumit Gera on 08/02/24.
//

import SwiftUI

struct ContentView: View {
  
  init() {
    let navBarAppearance = UINavigationBarAppearance()
    navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.gray]
    navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.gray]
    
    UINavigationBar.appearance().standardAppearance = navBarAppearance
    UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
  }
    var body: some View {
      NavigationView {
        VStack {
          MainListView()
        }
        .navigationTitle("To Done")
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
