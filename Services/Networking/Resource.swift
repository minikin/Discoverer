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
	// Workaround for initialization
	private(set) var didChange: AnyPublisher<A?, Never> = Publishers.Empty().eraseToAnyPublisher()
	
	let subject = PassthroughSubject<A?, Never>()
	let endpoint: Endpoint<A>
	var firstSubscriber: Bool = true
	
	var value: A? {
		didSet {
			DispatchQueue.main.async {
				self.subject.send(self.value)
			}
		}
	}
	
	init(endpoint: Endpoint<A>) {
		self.endpoint = endpoint
		didChange = subject.handleEvents(receiveSubscription: { [weak self] sub in
			guard let s = self, s.firstSubscriber else { return }
			s.firstSubscriber = false
			s.reload()
		}).eraseToAnyPublisher()
	}
	
	func reload() {
		URLSession.shared.load(endpoint) { result in
			self.value = try? result.get()
		}
	}
}
