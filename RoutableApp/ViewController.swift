//
//  ViewController.swift
//  RoutableApp
//
//  Created by Fabian Buentello on 11/29/16.
//  Copyright © 2016 ChaiOne. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        Alamofire.request(Router.User("2").getStatus(params: "2")).validate().responseJSON { response in
            switch response.result {
            case .success:
                debugPrint(response) // https://private-85a46-routable.apiary-mock.com/users/2/statuses/2
            case .failure(let error):
                print(error)
            }
        }
    }
}
