//
//  ItemView.swift
//  ToDone
//
//  Created by Sumit Gera on 08/02/24.
//

import SwiftUI

struct ItemView: View {
    @State var item: Item

    var body: some View {
      HStack {
        RoundedRectangle(cornerRadius: 5.0)
          .stroke(lineWidth: 2.0)
          .frame(width: 24, height: 24)
          .overlay {
            item.status == .done ? Image(systemName: "checkmark") : nil
          }
          .onTapGesture {
            withAnimation(.spring()) {
              item.toggle()
            }
          }
        Text(item.value)
      }
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
      ItemView(item: Item(id: "1", value: "Sample", status: .pending))
    }
}
