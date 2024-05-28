//
//  QrInstructView.swift
//  CoffeeApp
//
//  Created by Daniil Vaschilin on 26/05/2024.
//

import SwiftUI

struct QrInstructView: View {
    var body: some View {
        NavigationStack {
            GeometryReader {geometry in
                let screenWidth = geometry.size.width
                let screenHeight = geometry.size.height
                ZStack {
                    Color("welcomeColor")
                        .edgesIgnoringSafeArea(.all)
                        .ignoresSafeArea()
                    VStack {
                        HStack {
                            Image("qrCodeIcon")
                                .resizable()
                                .frame(maxWidth: screenWidth * 0.3, maxHeight: screenHeight * 0.15)
                            VStack(alignment: .leading) {
                                Text("After registration")
                                    .foregroundColor(.white)
                                    .font(.system(size: screenWidth * 0.07))
                                Text("QR code will appear in your personal account.")
                                    .foregroundColor(.white)
                                    .font(.system(size: screenWidth * 0.04))
                            }
                        }
                        Spacer()
                        HStack {
                            VStack(alignment: .leading) {
                                Text("We will scan it")
                                    .foregroundColor(.white)
                                    .font(.system(size: screenWidth * 0.07))
                                Text("Show it to the cashier and he will scan it for you.")
                                    .foregroundColor(.white)
                                    .font(.system(size: screenWidth * 0.04))
                            }
                            Image("qrCodeIconSecond")
                                .resizable()
                                .frame(maxWidth: screenWidth * 0.3, maxHeight: screenHeight * 0.15)
                        }
                        Spacer()
                        HStack {
                            Image("giftIcon")
                                .resizable()
                                .frame(maxWidth: screenWidth * 0.3, maxHeight: screenHeight * 0.15)
                            VStack(alignment: .leading) {
                                Text("Join our loyalty programs")
                                    .foregroundColor(.white)
                                    .font(.system(size: screenWidth * 0.07))
                                Text("Make Purchase and enjoy promotions")
                                    .foregroundColor(.white)
                                    .font(.system(size: screenWidth * 0.04))
                            }
                            
                        }
                        
                        HStack {
                            Spacer()
                            NavigationLink("Next", destination: WelcomeVIew())
                                .font(.system(size: screenWidth * 0.04))
                                .foregroundColor(.white)
                                .frame(maxWidth: screenWidth * 0.2, maxHeight: screenHeight * 0.05)
                                .background(Color("grayButton"))
                                .cornerRadius(15)
                        }
                        .padding(.trailing ,screenHeight * 0.04)
                        .padding(.top ,screenHeight * 0.05)
                        .padding(.bottom ,screenHeight * -0.04)
                        
                    }
                    .frame(maxWidth: screenWidth * 0.9, maxHeight: screenHeight * 0.95)
                }
            }
        }
    }
}

#Preview {
    QrInstructView()
}
