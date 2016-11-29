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

    struct User: Readable, Creatable, Updateable {
        var route: String = "users"
        var urlParams: String!
    }

    struct Status: Readable, Creatable, Deletable {
        var route: String = "statuses"
        var urlParams: String!
    }

    struct Picture: Readable, Creatable, Deletable, Updateable {
        var route: String = "pictures"
        var urlParams: String!
    }

    struct Comment: Readable, Creatable, Deletable, Updateable {
        var route: String = "comments"
        var urlParams: String!
    }

    struct Post: Readable, Creatable, Deletable, Updateable {
        var route: String = "posts"
        var urlParams: String!
    }

    struct Like: Readable, Creatable, Deletable {
        var route: String  = "likes"
        var urlParams: String!
    }
}

extension Router.User {

    func getStatus(params: String) -> RequestConverterProtocol {
        return nestedRoute(args: urlParams, child: Router.Status.get(params: params))
    }
}
