//
//  LoginView.swift
//  Discoverer
//
//  Created by Developer on 20.06.19.
//  Copyright © 2019 Sasha Prokhorenko. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    @State private var nickName = ""
    @State private var password = ""

    var body: some View {
        ZStack {
            Image("background")
                .aspectRatio(contentMode: .fill)

            VStack {
                VStack {
                    Group {
                        TextField($nickName, placeholder: Text("Nickname"))
                            .padding(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20))
                            .background(Color.gray)
                    }

                    Group {
                        TextField($password, placeholder: Text("Password"))
                            .padding(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20))
                            .background(Color.gray)
                    }
                }
                .background(Color.white)
                .padding(EdgeInsets(top: 0, leading: 40, bottom: 0, trailing: 40))

                Button(action: {
                    print("PRINT")
                }) {
                    Text("Log In")
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                }
                .frame(width: 200, height: 60, alignment: Alignment.center)
                .background(Color.blue)
            }
        }
    }
}

#if DEBUG
    struct LoginView_Previews: PreviewProvider {
        static var previews: some View {
            LoginView()
        }
    }
#endif
