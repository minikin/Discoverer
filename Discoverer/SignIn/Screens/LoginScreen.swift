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
    @State private var pressed = false

    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)

            VStack {
                signInForm($nickName, $password)
                FilledButton(title: "Sign In") {
                    print("FilledButton")
                }
                // filledButton("Sign In", fakeNetworkReuest())
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
