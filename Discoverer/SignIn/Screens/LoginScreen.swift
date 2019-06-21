//
//  LoginView.swift
//  Discoverer
//
//  Created by Developer on 20.06.19.
//  Copyright © 2019 Sasha Prokhorenko. All rights reserved.
//

import SwiftUI

let screenWidth = UIScreen.main.bounds.width

struct LoginScreen: View {
    @State private var nickName = ""
    @State private var password = ""

    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
            VStack {
                VStack {
                    textInputField($nickName,
                                   placeholderText: "Nickname",
                                   imageNamed: "at",
                                   padding: Theme.Padding.nickName)

                    textInputField($nickName,
                                   placeholderText: "Password",
                                   imageNamed: "flame",
                                   padding: Theme.Padding.password)
                }
                .frame(width: screenWidth - 60, alignment: Alignment.center)
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 6))

                filledButton("Sign In", buttonPressed)
            }
        }
    }
}

#if DEBUG
    struct LoginScreen_Previews: PreviewProvider {
        static var previews: some View {
            LoginScreen()
        }
    }
#endif
