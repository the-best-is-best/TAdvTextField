//
//  Main.swift
//  TAdvTextField_Example
//
//  Created by 52ndSolution on 03/03/2024.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

import SwiftUI
import TAdvTextField

struct MainView: View {
    @StateObject var viewModel = MainViewModel()

    var body: some View {
        VStack{
            AdvTextField(placeHolder: "Email",  value: $viewModel.email){
                print("new v ", viewModel.email)
            }.overlay(
                Rectangle()
                    .frame(height: 1)
                    .offset(y: 20)  // Adjust vertical offset as needed
                    .foregroundColor(Color.black)  // Set underline color
                    .edgesIgnoringSafeArea(.all).padding()
            )

            AdvSecureTextField(
                imageColor: .red,
                placeHolder: "Password",  value: $viewModel.email){
                print("new v ", viewModel.email)
            }.overlay(
                Rectangle()
                    .frame(height: 1)
                    .offset(y: 20)  // Adjust vertical offset as needed
                    .foregroundColor(Color.black)  // Set underline color
                    .edgesIgnoringSafeArea(.all).padding()
            )

        }
    }
}

#Preview {
    MainView()
}
