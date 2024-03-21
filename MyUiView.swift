//
//  MyUiView.swift
//  Ind02_Howard_Derek
//
//  Created by Laura Howard on 3/20/24.
//

import UIKit

class MyUiView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    var pic: UIImage? = UIImage(named: "1.png")
    
    func drwaPic() {
        guard let pic = self.pic else { print( "ERROR: file not found")
            return }
    }
    
    
    

}
