//
//  App.swift
//  SwiftUI-Sandbox
//
//  Created by Erik Bye on 8/12/19.
//  Copyright © 2019 Planning Center. All rights reserved.
//

import SwiftUI

struct Price: Hashable, Codable, Identifiable {
    var id: Int
    var description: String
    var price: Double
}

struct App: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var selectedPriceID: Int 
    var prices: [Price]
//    var color: Color
//    var productManager: String
    //    var category: Category
    //
    //    enum Category: String, CaseIterable, Codable, Hashable {
    //        case featured = "Featured"
    //        case lakes = "Lakes"
    //        case rivers = "Rivers"
    //    }
}


