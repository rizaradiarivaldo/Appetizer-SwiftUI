//
//  Appetizer.swift
//  Appetizers
//
//  Created by Riza Radia Rivaldo on 11/12/23.
//

import Foundation

struct Appetizer: Decodable, Identifiable{
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(id: 001, name: "Test Appetizer", description: "Test appetizer description lorem ipsum dolor sir emet lore", price: 20.0577, imageURL: "", calories: 99, protein: 99, carbs: 99)
    
    static let appetizers       = [sampleAppetizer, sampleAppetizer, sampleAppetizer]
    
    static let orderItemOne     = Appetizer(id: 001, name: "Test Appetizer One", description: "Test appetizer description lorem ipsum dolor sir emet lore", price: 20.0577, imageURL: "", calories: 99, protein: 99, carbs: 99)
    
    static let orderItemTwo     = Appetizer(id: 002, name: "Test Appetizer Two", description: "Test appetizer description lorem ipsum dolor sir emet lore", price: 20.0577, imageURL: "", calories: 99, protein: 99, carbs: 99)
    
    static let orderItemThree     = Appetizer(id: 003, name: "Test Appetizer Three", description: "Test appetizer description lorem ipsum dolor sir emet lore", price: 20.0577, imageURL: "", calories: 99, protein: 99, carbs: 99)
    
    static let orderItems = [orderItemOne, orderItemTwo, orderItemThree]
}
