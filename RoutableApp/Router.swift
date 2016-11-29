//
//  Router.swift
//  RoutableApp
//
//  Created by Fabian Buentello on 11/29/16.
//  Copyright © 2016 ChaiOne. All rights reserved.
//

import Foundation

struct Router: URLRouter {
    static var basePath: String {
        return "https://private-85a46-routable.apiary-mock.com/"
    }

    struct User: Readable, Creatable, Deletable, Updateable {
        var route: String = "users"
    }

    struct Post: Readable, Creatable, Updateable {
        var route: String = "posts"
    }
}
