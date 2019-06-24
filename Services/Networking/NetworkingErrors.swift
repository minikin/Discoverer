//
//  NetworkingErrors.swift
//  Discoverer
//
//  Created by Developer on 24.06.19.
//  Copyright © 2019 Sasha Prokhorenko. All rights reserved.
//

import Foundation

struct NoDataError: Error {}
struct UnknownError: Error {}
struct WrongStatusCodeError: Error {
    let statusCode: Int
}
