//
//  WelcomeVIew.swift
//  CoffeeApp
//
//  Created by Daniil Vaschilin on 26/05/2024.
//

import SwiftUI

struct WelcomeVIew: View {
    var body: some View {
        NavigationStack {
            GeometryReader {geometry in
                let screenWidth = geometry.size.width
                ZStack {
                    Color(Color("welcomeColor"))
                        .edgesIgnoringSafeArea(.all)
                        .ignoresSafeArea(.all)
                        .overlay {
                            VStack(spacing: 10) {
                                Image("KakaoLogoClear")
                                    .resizable()
                                    .scaledToFit()
                                Text("Welcome")
                                    .font(.system(size: screenWidth * 0.1))
                                    .foregroundColor(.white)
                                Text("Login or Register")
                                    .font(.system(size: screenWidth * 0.05))
                                    .foregroundColor(Color("textSecond"))
                                    .padding(.bottom, 15)
                                ButtonEnterStyleView(backgroundColor: Color("grayButton"), textColor: .white, buttonWidth: 350, buttonheight: 55, buttonRadius: 10, buttonImage: "apple", buttonText: "Login", destination: LoginAppleView())
                                ButtonEnterStyleView(backgroundColor: Color("grayButton"), textColor: .white, buttonWidth: 350, buttonheight: 55, buttonRadius: 10, buttonImage: "mail", buttonText: "Login", destination: LoginEmailView())
                                ButtonEnterStyleView(backgroundColor: Color("grayButton"), textColor: .white, buttonWidth: 350, buttonheight: 55, buttonRadius: 10, buttonImage: "google", buttonText: "Login", destination: LoginGoogleView())
                                HStack {
                                    Text("New here ?")
                                        .foregroundColor(.white)
                                        .font(.system(size: screenWidth * 0.05))
                                    NavigationLink("Register", destination: RegisterVIew())
                                            .foregroundColor(.brown)
                                            .font(.system(size: screenWidth * 0.05))
                                }
                                .padding()
                                Spacer()
                            }
                        }.navigationBarBackButtonHidden()
                }
            }
        }
    }
}

#Preview {
    WelcomeVIew()
}
