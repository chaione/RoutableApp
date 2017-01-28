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
    }

    struct Status: Readable, Creatable, Deletable {
        var route: String = "statuses"
    }
}
