//
//  ItemView.swift
//  ToDone
//
//  Created by Sumit Gera on 08/02/24.
//

import SwiftUI

struct ItemView: View {
    let item: Item
  
    var body: some View {
        Text(item.value)
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
      ItemView(item: Item(id: "1", value: "Sample", status: .pending))
    }
}
