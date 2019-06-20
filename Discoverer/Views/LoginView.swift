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
                .resizable()
                .aspectRatio(contentMode: .fill)

            VStack {
                VStack {
									
                    HStack {
											
                        Group {
													Image(systemName: "flame")
														.padding(.leading)
														.foregroundColor(Color.gray)
                            TextField($nickName, placeholder: Text("Nickname"))
                        }
                    }
                    .frame(height: 60, alignment: Alignment.leading)
                    .border(Color.gray)
                    .padding(EdgeInsets(top: 8, leading: 8, bottom: 2, trailing: 8))
									
                    HStack {
                        Image(systemName: "flame")
                            .padding(.leading)
                            .foregroundColor(Color.gray)
                        Group {
                            TextField($password, placeholder: Text("Password"))
                        }
                    }
                    .frame(height: 60, alignment: Alignment.leading)
                    .border(Color.gray)
                    .padding(EdgeInsets(top: 0, leading: 8, bottom: 8, trailing: 8))
									
                }
                .frame(width: UIScreen.main.bounds.width - 60, alignment: Alignment.center)
                .background(Color.white)
								.clipShape(RoundedRectangle(cornerRadius: 6))
							
                FilledButton(title: "Sign In") {
                    print("SimpleButton")
                }
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
