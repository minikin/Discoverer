//
//  SimpleButton.swift
//  Discoverer
//
//  Created by Developer on 20.06.19.
//  Copyright © 2019 Sasha Prokhorenko. All rights reserved.
//

import SwiftUI

struct FilledButton: View {
    let title: String
    var action: () -> Void

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
    }
}
