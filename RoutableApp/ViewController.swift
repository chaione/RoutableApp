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

        Alamofire.request(Router.User.get(params: "2")).validate().responseJSON { response in
            switch response.result {
            case .success:
                print("Validation Successful")
                debugPrint(response)
            case .failure(let error):
                print(error)
            }
        }
    }
}
