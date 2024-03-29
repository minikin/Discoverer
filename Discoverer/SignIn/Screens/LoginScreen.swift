//
//  LoginView.swift
//  Discoverer
//
//  Created by Developer on 20.06.19.
//  Copyright © 2019 Sasha Prokhorenko. All rights reserved.
//

import SwiftUI

struct LoginScreen: View {
    @State private var nickName = ""
    @State private var password = ""
    @State private var pressed = false

    @ObjectBinding var user = Resource(endpoint: User.userInfo(login: ""))

    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)

            VStack {
                Group {
                    if user.value == nil {
                        Text("")
                    } else {
                        VStack {
                            Text(user.value!.name).bold()
                            Text(user.value!.location ?? "")
                        }
                    }
                }.frame(width: 400, height: 60, alignment: Alignment.center)
                signInForm($nickName, $password)
                FilledButton(title: "Sign In") {
									print("\(self.$nickName)")
									self.user.endpoint = User.userInfo(login: "\(self.$nickName.value)")
									self.user.reload()
                }
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
