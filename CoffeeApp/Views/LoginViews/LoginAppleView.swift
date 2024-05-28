//
//  LoginAppleView.swift
//  CoffeeApp
//
//  Created by Daniil Vaschilin on 28/05/2024.
//

import SwiftUI

struct LoginAppleView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Color("welcomeColor")
                    .edgesIgnoringSafeArea(.all)
                    .ignoresSafeArea()
                VStack {
                    Text("Apple Login Screen")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .padding()
                    Image(systemName: "hazardsign.fill")
                        .foregroundColor(.orange)
                        .font(.largeTitle)
                }
            }
        }
        
    }
}

#Preview {
    LoginAppleView()
}
