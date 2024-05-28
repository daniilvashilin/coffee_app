//
//  LoadingView.swift
//  CoffeeApp
//
//  Created by Daniil Vaschilin on 27/05/2024.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        GeometryReader { geometry in
            let screenWidth = geometry.size.width
            ZStack {
                Color("welcomeColor")
                    .edgesIgnoringSafeArea(.all)
                    .ignoresSafeArea()
                VStack {
                    Image("KakaoLogoClear")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: screenWidth * 0.6)
                        .padding()
                    
                    ZStack {
                        Circle()
                            .stroke(Color("grayButton"), lineWidth: 5)
                            .frame(width: 50, height: 50)
                        Circle()
                            .trim(from: 0, to: 0.7)
                            .stroke(Color.white, lineWidth: 5)
                            .frame(width: 50, height: 50)
                    }
                    
                    Text("Loading")
                        .foregroundColor(.white)
                        .font(.system(size: screenWidth * 0.05))
                        .padding()
                }
                
            }
        }
    }
}

#Preview {
    LoadingView()
}
