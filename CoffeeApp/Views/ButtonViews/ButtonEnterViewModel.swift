//
//  ButtonEnterViewModel.swift
//  CoffeeApp
//
//  Created by Daniil Vaschilin on 26/05/2024.
//

import Foundation

class ButtonEnterViewModel: ObservableObject {
        @Published var imageName: String
        @Published var textButton: String
        
        init(imageName: String, textButton: String) {
            self.imageName = imageName
            self.textButton = textButton
        }
    
    static let variation1 = ButtonEnterViewModel(imageName: "apple.logo", textButton: "Login")
    static let variation2 = ButtonEnterViewModel(imageName: "envelope.fill", textButton: "Login")
    static let variation3 = ButtonEnterViewModel(imageName: "google", textButton: "Login")
    
    }


