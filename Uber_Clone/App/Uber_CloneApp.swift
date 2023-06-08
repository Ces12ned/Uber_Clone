//
//  Uber_CloneApp.swift
//  Uber_Clone
//
//  Created by Edgar Cisneros on 07/06/23.
//

import SwiftUI

@main
struct Uber_CloneApp: App {
    @StateObject var locationViewModel = LocationSearchViewModel()
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(locationViewModel)
        }
    }
}
