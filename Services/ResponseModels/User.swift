//
//  User.swift
//  Discoverer
//
//  Created by Developer on 24.06.19.
//  Copyright © 2019 Sasha Prokhorenko. All rights reserved.
//

import Foundation

struct User: Codable {
    var name: String
    var location: String?
}

extension User {
    static func userInfo(login: String) -> Endpoint<User> {
        return Endpoint(json: .get, url: URL(string: "https://api.github.com/users/\(login)")!)
    }
}

// struct Post: Codable {
//	let userId: Int
//	let title: String
//	let body: String
// }
//
// let postsUrl = URL(string: "https://jsonplaceholder.typicode.com/posts")!
// let posts = Endpoint<[Post]>(json: .get, url: postsUrl)
