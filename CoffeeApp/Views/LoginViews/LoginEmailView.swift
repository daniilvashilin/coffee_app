//
//  GetStartedView.swift
//  CoffeeApp
//
//  Created by Daniil Vaschilin on 26/05/2024.
//

import SwiftUI

struct LoginEmailView: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        GeometryReader {geometry in
            let screenWidth = geometry.size.width
            let screenHeight = geometry.size.height
            ZStack {
                Color("welcomeColor")
                    .edgesIgnoringSafeArea(.all)
                    .ignoresSafeArea()
                VStack {
                    Image("KakaoLogoClear")
                        .resizable()
                        .scaledToFit()
                    
                    HStack {
                        Image(systemName: "envelope.circle")
                            .font(.system(size: screenWidth * 0.07))
                            .padding(.leading, 7)
                            .padding(.bottom, 5)
                        TextField("Search", text: $email)
                            .font(.system(size: screenWidth * 0.05))
                            .frame(maxWidth: screenWidth * 0.6)
                    }.underlineTextField()
                    
                    HStack {
                        Image(systemName: "key.viewfinder")
                            .font(.system(size: screenWidth * 0.07))
                            .padding(.leading, 7)
                            .padding(.bottom, 5)
                        SecureField("Search", text: $password)
                            .font(.system(size: screenWidth * 0.05))
                            .frame(maxWidth: screenWidth * 0.6)
                    }.underlineTextField()
                    
                    Button(action: {}, label: {
                        Text("Login")
                            .foregroundStyle(.white)
                            .frame(maxWidth: screenWidth * 0.6, maxHeight: screenHeight * 0.06)
                            .background(Color("grayButton"))
                            .cornerRadius(10)
                    })
                    .padding()
                }
            }
        }
    }
}

#Preview {
    LoginEmailView()
}

extension View {
    func underlineTextField() -> some View {
        self
            .padding(.vertical, 10)
            .overlay(Rectangle().frame(height: 2).padding(.top, 35))
            .foregroundColor(.white)
            .padding(10)
    }
}
