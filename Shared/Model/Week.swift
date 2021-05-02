//
//  Week.swift
//  Wallet (iOS)
//
//  Created by Michele Manniello on 02/05/21.
//

import Foundation
import SwiftUI
struct Week: Identifiable {
    var id = UUID().uuidString
    var day : String
    var date : String
    var amountSpent : CGFloat
}
