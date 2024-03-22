//
//  ViewController.swift
//  Ind02_Howard_Derek
//
//  Created by Derek Howard on 3/19/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func shuffle(_ sender: Any) {
        SceneDelegate().shuffle()
    }
    
    @IBAction func tapHandler(_ sender: UITapGestureRecognizer) {
        print("Tap handled")
    }
}

