//
//  AppDelegate.swift
//  Ind02_Howard_Derek
//
//  Created by Derek Howard on 3/19/24.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    
    var tileArray = [[String]](
        arrayLiteral:
        ["7","1","2","3"],
        ["4","5","6","0"],
        ["8","9","10","11"],
        ["12","13","14","15"],
        ["16","17","18","19"]
    )
    
    func shuffel() -> [[String]] {
        var count = 0
        while count < Int.random(in: 15...25){
            findBlank(tileArray: tileArray)
            count+=1
        }
        print("Array shuffled")
        return tileArray
    }
    
    func findBlank(tileArray: [[String]]){
        var x = 0
        var y = 0
        while tileArray[y][x] != "0" {
            if x > 2 {
                x=0
                y+=1
            } else {x+=1}
            
        }
        findDirection(tileArray: tileArray, zeroLocation: [y,x])
    }
    
    func findDirection(tileArray: [[String]], zeroLocation: [Int]){
        var direction = 0
        var up = true
        var right = true
        var down = true
        var left = true
        if zeroLocation[0] == 0 {
            up=false
        }
        if zeroLocation[1] == 3 {
            right=false
        }
        if zeroLocation[0] == 4 {
            down=false
        }
        if zeroLocation[1] == 0 {
            left=false
        }
        
        while direction==0 {
            switch Int.random(in: 1...4) {
            case 1:
                if up {direction=1}
            case 2:
                if right {direction=2}
            case 3:
                if down {direction=3}
            case 4:
                if left {direction=4}
            default:
            print ("try again")
            }
        }
        slide(tileArray: tileArray, zeroLocation: zeroLocation, direction: direction)
    }
    
    func slide(tileArray: [[String]], zeroLocation: [Int], direction: Int){
        var temp = ""
        switch direction {
        case 1:
            temp=tileArray[zeroLocation[0]-1][zeroLocation[1]]
            self.tileArray[zeroLocation[0]-1][zeroLocation[1]]="0"
            self.tileArray[zeroLocation[0]][zeroLocation[1]]=temp
        case 2:
            temp=tileArray[zeroLocation[0]][zeroLocation[1]+1]
            self.tileArray[zeroLocation[0]][zeroLocation[1]+1]="0"
            self.tileArray[zeroLocation[0]][zeroLocation[1]]=temp
        case 3:
            temp=tileArray[zeroLocation[0+1]][zeroLocation[1]]
            self.tileArray[zeroLocation[0+1]][zeroLocation[1]]="0"
            self.tileArray[zeroLocation[0]][zeroLocation[1]]=temp
        case 4:
            temp=tileArray[zeroLocation[0]][zeroLocation[1]-1]
            self.tileArray[zeroLocation[0]][zeroLocation[1]-1]="0"
            self.tileArray[zeroLocation[0]][zeroLocation[1]]=temp
        default:
            temp = "oops"
        }
        
    }
    


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}
