//
//  SignInForm.swift
//  Discoverer
//
//  Created by Developer on 21.06.19.
//  Copyright © 2019 Sasha Prokhorenko. All rights reserved.
//

import SwiftUI

func signInForm(_ nickName: Binding<String>, _ password: Binding<String>) -> some View {
    VStack {
        textInputField(nickName,
                       placeholderText: "Nickname",
                       imageNamed: "at",
                       padding: Theme.Padding.nickName)

        textInputField(password,
                       placeholderText: "Password",
                       imageNamed: "flame",
                       padding: Theme.Padding.password)
    }
    .frame(width: screenWidth - 60, alignment: Alignment.center)
    .background(Color.white)
    .cornerRadius(6, antialiased: true)
}
