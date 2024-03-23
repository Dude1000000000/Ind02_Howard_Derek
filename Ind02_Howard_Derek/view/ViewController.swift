//
//  ViewController.swift
//  Ind02_Howard_Derek
//
//  Created by Derek Howard on 3/19/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var _0: UIImageView!
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func shuffle(_ sender: Any) {
        SceneDelegate().shuffle()
    }
    
    @IBAction func tapHandler(_ sender: UITapGestureRecognizer) {
        print("Tap handled")
        _0.image = UIImage(named: "20.png")
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let test = segue.destination as! AnswerViewController
    }
    
    @IBAction func myUwindAction(segue: UIStoryboardSegue){
        let test = segue.source as! AnswerViewController
    }
    

    
}

