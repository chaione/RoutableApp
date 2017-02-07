//
//  Router.swift
//  RoutableApp
//
//  Created by Fabian Buentello on 1/28/17.
//  Copyright © 2017 ChaiOne. All rights reserved.
//

import Foundation
import Alamofire

struct Router: URLRouter {
    static var basePath: String {
        return "https://private-85a46-routable.apiary-mock.com/"
    }

    struct User: Readable, Creatable, Deletable, Updatable {
        var route: String = "users"
        var urlParams: String!
    }

    struct Status: Readable, Creatable, Deletable {
        var route: String = "statuses"
        var urlParams: String!
    }
}

extension Router.User {

    func getStatus(params: String) -> RequestConverterProtocol {
        return nestedRoute(args: urlParams, child: Router.Status.get(params: params))
    }
}
