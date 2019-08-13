//
//  UserData.swift
//  SwiftUI-Sandbox
//
//  Created by Erik Bye on 8/12/19.
//  Copyright © 2019 Planning Center. All rights reserved.
//


import SwiftUI
import Combine

final class UserData: ObservableObject  {
    @Published var showHero = true
    @Published var checkinsIndex = 0
    @Published var givingIndex = 0
    @Published var groupsIndex = 0
    @Published var registrationIndex = 0
    @Published var resourcesIndex = 0
    @Published var servicesIndex = 0
}
