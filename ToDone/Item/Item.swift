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
  let status: Item.Status
  
  enum Status {
    case pending
    case done
  }
}
