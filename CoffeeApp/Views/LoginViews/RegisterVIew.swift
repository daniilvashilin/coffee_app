//
//  RegisterVIew.swift
//  CoffeeApp
//
//  Created by Daniil Vaschilin on 27/05/2024.
//

import SwiftUI

struct RegisterVIew: View {
    @State private var email = ""
    @State private var password = ""
    @State private var passwordRepeat = ""
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
                    Text("Get started")
                        .foregroundColor(.white)
                        .font(.system(size: screenWidth * 0.1))
                    Text("Register now")
                        .font(.system(size: screenWidth * 0.05))
                        .foregroundColor(Color("textSecond"))
                    
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
                    HStack {
                        Image(systemName: "key.viewfinder")
                            .font(.system(size: screenWidth * 0.07))
                            .padding(.leading, 7)
                            .padding(.bottom, 5)
                        SecureField("Search", text: $passwordRepeat)
                            .font(.system(size: screenWidth * 0.05))
                            .frame(maxWidth: screenWidth * 0.6)
                    }.underlineTextField()
                    
                    Button(action: {}, label: {
                        Text("Register")
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
    RegisterVIew()
}
