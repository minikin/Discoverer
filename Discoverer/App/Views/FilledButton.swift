//
//  SimpleButton.swift
//  Discoverer
//
//  Created by Developer on 20.06.19.
//  Copyright © 2019 Sasha Prokhorenko. All rights reserved.
//

import Foundation
import SwiftUI

enum NetworkError: Error {
    case badURL
}

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

func fakeNetworkReuest() -> (Result<String, NetworkError>) -> Void {
    return { result in
        switch result {
        case let .success(value):
            print(value)
        case let .failure(error):
            print(error.localizedDescription)
        }
    }
}

func filledButton(_ title: String,
                  _ completionHandler: @escaping (Result<String, NetworkError>) -> Void) -> some View {
    Button(action: {
        let random = Int.random(in: 0 ..< 3)
        DispatchQueue.main.asyncAfter(deadline: .now() + Double(random)) {
            if random == 1 {
                completionHandler(.failure(.badURL))
            } else {
                completionHandler(.success("Success!"))
            }
        }
    }) {
        Text(title)
            .font(.largeTitle)
            .foregroundColor(Color.white)
    }
    .frame(width: 200, height: 60, alignment: Alignment.center)
    .background(Color.blue)
    .cornerRadius(8, antialiased: true)
}
