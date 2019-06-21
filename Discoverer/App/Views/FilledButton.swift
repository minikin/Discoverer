//
//  SimpleButton.swift
//  Discoverer
//
//  Created by Developer on 20.06.19.
//  Copyright © 2019 Sasha Prokhorenko. All rights reserved.
//

import SwiftUI

struct FilledButton: View {
    @State private var pressed = false
    let title: String
    let action: () -> Void

    var body: some View {
        Button(action: {
            self.action()
        }) {
            Text(title)
                .font(.largeTitle)
                .foregroundColor(Color.white)
        }
        .frame(width: 200, height: 60, alignment: Alignment.center)
        .background(Color.blue)
        .clipShape(RoundedRectangle(cornerRadius: 6))
    }
}

func buttonPressed() {
    print("buttonPressed")
}

func filledButton(_ title: String = "", _ action: @escaping () -> Void) -> some View {
    Button(action: {
        action()
    }) {
        Text(title)
            .font(.largeTitle)
            .foregroundColor(Color.white)
    }
    .frame(width: 200, height: 60, alignment: Alignment.center)
    .background(Color.blue)
    .cornerRadius(8, antialiased: true)
}
