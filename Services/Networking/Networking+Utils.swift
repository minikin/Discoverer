//
//  Networking+Utils.swift
//  Discoverer
//
//  Created by Developer on 24.06.19.
//  Copyright © 2019 Sasha Prokhorenko. All rights reserved.
//

import Foundation

func expected200to300(_ code: Int) -> Bool {
    return code >= 200 && code < 300
}
