//
//  Book.swift
//  miniProject1
//
//  Created by mohamad on 1/2/21.
//

import Foundation

struct Book: Hashable , Identifiable {
    var name : String
    var number : String
    var total : Double
    var id = UUID()
}

let test = Book(name: "", number: "", total: 0)
