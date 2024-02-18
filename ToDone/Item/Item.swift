//
//  Item.swift
//  ToDone
//
//  Created by Sumit Gera on 08/02/24.
//

import Foundation

struct Item: Identifiable {
  let id: String
  let value: String
  var status: Item.Status
  
  mutating func toggle() {
    status = status == .pending ? .done : .pending
  }
  
  enum Status {
    case pending
    case done
  }
}
