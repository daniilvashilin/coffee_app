//
//  CoffeeAppApp.swift
//  CoffeeApp
//
//  Created by Daniil Vaschilin on 26/05/2024.
//

import SwiftUI

@main
struct CoffeeAppApp: App {
    var body: some Scene {
        WindowGroup {
            QrInstructView()
                .blendMode(.darken)
        }
    }
}
