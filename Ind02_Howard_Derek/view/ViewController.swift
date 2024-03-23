//
//  ViewController.swift
//  Ind02_Howard_Derek
//
//  Created by Derek Howard on 3/19/24.
//

import UIKit

class ViewController: UIViewController {
    
    var zeroY = "0"
    var zeroX = "0"
    let blank = UIImage(named: "transparent square")
    
    @IBOutlet var rowOne: [UIImageView]!
    
    @IBOutlet var rowTwo: [UIImageView]!
    
    @IBOutlet var rowThree: [UIImageView]!
    
    @IBOutlet var rowFour: [UIImageView]!
    
    @IBOutlet var rowFive: [UIImageView]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func shuffle(_ sender: Any) {
        var board: [[UIImageView]] = [
    rowOne,rowTwo,rowThree,rowFour,rowFive
        ]
        let newBoard = SceneDelegate().shuffle()
        var count = 0
        var x = -1
        var y = 0
        
        while count < 19 {
            if x > 2 {
                x=0
                y+=1
            } else {x+=1}
            board[y][x].image=UIImage(named: "\(newBoard[y][x]).png")
            if newBoard[y][x] == "0"{
                zeroY=String(y)
                zeroX=String(x)
            }
            count+=1
        }
    }
    
    @IBAction func tapHandler(_ sender: UITapGestureRecognizer) {
        var board: [[UIImageView]] = [
            rowOne,rowTwo,rowThree,rowFour,rowFive
        ]
        let test = (Int(zeroY)!*4)+Int(zeroX)!
        
        if Int(sender.name!) == test-1 || Int(sender.name!) == test+1 || Int(sender.name!) == test+4 || Int(sender.name!) == test+4 {
            
            board[Int(zeroY)!][Int(zeroX)!].image=sender.view?.largeContentImage
            sender.view?.largeContentImage=blank
        }
        
        print("Tap handled")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let test = segue.destination as! AnswerViewController
    }
    
    @IBAction func myUwindAction(segue: UIStoryboardSegue){
        let test = segue.source as! AnswerViewController
    }
    

    
}

