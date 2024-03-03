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
            }
            Spacer().frame(height: 10)
            AdvTextField(placeHolder: "Email",  value: $viewModel.email){
                print("new v ", viewModel.email)
            }
        }
    }
}

#Preview {
    MainView()
}
