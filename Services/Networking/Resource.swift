//
//  Resource.swift
//  Discoverer
//
//  Created by Developer on 24.06.19.
//  Copyright © 2019 Sasha Prokhorenko. All rights reserved.
//

import Combine
import SwiftUI

final class Resource<A>: BindableObject {
    let didChange = PassthroughSubject<A?, Never>()
    let endpoint: Endpoint<A>
    var value: A? {
        didSet {
            DispatchQueue.main.async {
                self.didChange.send(self.value)
            }
        }
    }

    init(endpoint: Endpoint<A>) {
        self.endpoint = endpoint
        reload()
    }

    func reload() {
        URLSession.shared.load(endpoint) { result in
            self.value = try? result.get()
        }
    }
}
