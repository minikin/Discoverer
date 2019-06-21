//
//  TextInputField.swift
//  Discoverer
//
//  Created by Developer on 20.06.19.
//  Copyright © 2019 Sasha Prokhorenko. All rights reserved.
//

import SwiftUI

struct TextInputField: View {
    let text: Binding<String>
    let imageNamed: String
    let placeholderText: String
    let padding: EdgeInsets

    var body: some View {
        HStack {
            Group {
                Image(systemName: imageNamed)
                    .padding(.leading)
                    .foregroundColor(Color.gray)
                TextField(text, placeholder: Text(placeholderText))
            }
        }
        .frame(height: 60, alignment: Alignment.leading)
        .border(Color.gray, width: 1)
        .clipShape(RoundedRectangle(cornerRadius: 6))
        .padding(padding)
    }
}

func textInputField(_ text: Binding<String>,
                    placeholderText: String = "",
                    imageNamed: String,
                    padding: EdgeInsets) -> some View {
    HStack {
        Group {
            Image(systemName: imageNamed)
                .padding(.leading)
                .foregroundColor(Color.gray)
            TextField(text, placeholder: Text(placeholderText))
        }
    }
    .frame(height: 60, alignment: Alignment.leading)
    .border(Color.gray, width: 1)
    .clipShape(RoundedRectangle(cornerRadius: 6))
    .padding(padding)
}
