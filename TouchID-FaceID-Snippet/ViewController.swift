//
//  ViewController.swift
//  TouchID-FaceID-Snippet
//
//  Created by Paulo Orquillo on 24/05/20.
//  Copyright © 2020 Quonsepto Limited. All rights reserved.
//

import UIKit
import LocalAuthentication

class ViewController: UIViewController {

    @IBAction func button(_ sender: Any) {
        let context:LAContext = LAContext()
        
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: nil) {
            context.evaluatePolicy(LAPolicy.deviceOwnerAuthenticationWithBiometrics, localizedReason: "Message") { (good, error) in
                if good {
                    print("Matched")
                } else {
                    print("Try again")
                }
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

