//
//  ScreenSizeMeneger.swift
//  CoffeeApp
//
//  Created by Daniil Vaschilin on 27/05/2024.
//

//Elements size fix

import Foundation
import SwiftUI

class ScreenSizeMeneger: ObservableObject {
    static let shared = ScreenSizeMeneger()
    
    @Published var screenWidth: CGFloat = UIScreen.main.bounds.width
    @Published var screenHeight: CGFloat = UIScreen.main.bounds.height
    
    private init() {}
    
    func updateSize(with geometry: GeometryProxy) {
        self.screenWidth = geometry.size.width
        self.screenHeight = geometry.size.height
    }
}
