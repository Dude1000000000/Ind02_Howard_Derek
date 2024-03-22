//
//  ViewController.swift
//  Ind02_Howard_Derek
//
//  Created by Derek Howard on 3/19/24.
//

import UIKit

class ViewController: UIViewController {
    
    var baord: [[UIImageView]] = [
        [UIImageView(image: UIImage.transparentSquare),UIImageView(image: UIImage._1),UIImageView(image: UIImage._2),UIImageView(image: UIImage._3)],
        [UIImageView(image: UIImage._4),UIImageView(image: UIImage._5),UIImageView(image: UIImage._6),UIImageView(image: UIImage._7)],
        [UIImageView(image: UIImage._8),UIImageView(image: UIImage._9),UIImageView(image: UIImage._10),UIImageView(image: UIImage._11)],
        [UIImageView(image: UIImage._12),UIImageView(image: UIImage._13),UIImageView(image: UIImage._14),UIImageView(image: UIImage._15)],
        [UIImageView(image: UIImage._16),UIImageView(image: UIImage._17),UIImageView(image: UIImage._18),UIImageView(image: UIImage._19)]
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func shuffle(_ sender: Any) {
    
    }
    
    @IBAction func tapHandler(_ sender: UITapGestureRecognizer) {
        print("Tap handled")
    }
}

