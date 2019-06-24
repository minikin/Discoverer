//
//  URLSession+Extensions.swift
//  Discoverer
//
//  Created by Developer on 24.06.19.
//  Copyright © 2019 Sasha Prokhorenko. All rights reserved.
//

import Foundation

extension URLSession {
    func load<A>(_ e: Endpoint<A>, onComplete: @escaping (Result<A, Error>) -> Void) {
        let r = e.request
        dataTask(with: r, completionHandler: { data, resp, _ in
            guard let h = resp as? HTTPURLResponse else {
                onComplete(.failure(UnknownError()))
                return
            }

            guard e.expectedStatusCode(h.statusCode) else {
                onComplete(.failure(WrongStatusCodeError(statusCode: h.statusCode)))
                return
            }

            onComplete(e.parse(data))
        }).resume()
    }

    func onDelegateQueue(_ f: @escaping () -> Void) {
        delegateQueue.addOperation(f)
    }
}
