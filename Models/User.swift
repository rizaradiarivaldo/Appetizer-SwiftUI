//
//  User.swift
//  Appetizers
//
//  Created by Riza Radia Rivaldo on 26/12/23.
//

import Foundation

struct User: Codable {
    var firstName           = ""
    var lastName            = ""
    var email               = ""
    var birthdate           = Date()
    var extraNapkins        = false
    var frequentRefills     = false
}
