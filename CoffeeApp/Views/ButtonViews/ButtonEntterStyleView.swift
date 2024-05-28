//
//  ButtonEnterView.swift
//  CoffeeApp
//
//  Created by Daniil Vaschilin on 26/05/2024.
//

import SwiftUI

struct ButtonEnterStyleView<Destination: View>: View {
    @ObservedObject var screenSizeManager = ScreenSizeMeneger.shared
    var backgroundColor: Color
    var textColor: Color
    var buttonWidth: CGFloat
    var buttonheight: CGFloat
    var buttonRadius: CGFloat
    var buttonImage: String
    var buttonText: String
    var destination: Destination
    
    
     let variation1 = ButtonEnterViewModel(imageName: "image1", textButton: "Button 1")
     let variation2 = ButtonEnterViewModel(imageName: "image2", textButton: "Button 2")
     let variation3 = ButtonEnterViewModel(imageName: "image3", textButton: "Button 3")
    var body: some View {
        
        ZStack {
            
            NavigationLink(destination: destination) {
                HStack {
                    Image(buttonImage)
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 40, maxHeight: 40)
                        .tint(textColor)
                        .padding(.horizontal)
                        .font(.system(size: screenSizeManager.screenWidth * 0.05))
                    Spacer()
                    Text(buttonText)
                        .foregroundStyle(.white)
                        .padding(.horizontal)
                        .font(.system(size: screenSizeManager.screenWidth * 0.05))
                }
                .frame(maxWidth: buttonWidth, maxHeight: buttonheight)
                .background(backgroundColor)
                .cornerRadius(buttonRadius)
                
            }
        }
        
    }
}

#Preview {
    ButtonEnterStyleView(backgroundColor: Color("grayButton"), textColor: .white, buttonWidth: 350, buttonheight: 55, buttonRadius: 10, buttonImage: "apple", buttonText: "Login", destination: LoginEmailView())
}
