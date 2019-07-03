//
//  LazyView.swift
//  Discoverer
//
//  Created by Developer on 03.07.19.
//  Copyright © 2019 Sasha Prokhorenko. All rights reserved.
//

import SwiftUI

struct LazyView<Content: View>: View {
	let build: () -> Content
	init(_ build: @autoclosure @escaping () -> Content) {
		self.build = build
	}
	var body: Content {
		build()
	}
}
