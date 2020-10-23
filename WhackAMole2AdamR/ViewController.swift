//
//  ViewController.swift
//  WhackAMole2AdamR
//
//  Created by Reichner, Adam R on 10/23/20.
//  Copyright © 2020 Reichner, Adam R. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var mole = UIButton()
    var score = UILabel()
    var background = UILabel()
    var scoreNum = 0
    var screenWidth = 0
    var screenHeight = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let screenBounds: CGRect = UIScreen.main.bounds
        screenWidth = Int(screenBounds.width)
        screenHeight = Int(screenBounds.height)
        
        //Mole
        mole.backgroundColor = UIColor.brown
        mole.frame = CGRect(x: screenWidth / 2, y: 70, width: 50, height: 50)
        mole.layer.cornerRadius = 25
        mole.addTarget(self, action: #selector(moleHit(_:)), for: .touchUpInside)
        
        //Score label
        score.text = "Score:" + String(scoreNum)
        score.frame = CGRect(x: 20, y: 20, width: 100, height: screenHeight / 10)
        
        //Background Label
        background.backgroundColor = UIColor.green
        background.frame = CGRect(x: 20, y: 20, width: screenWidth - 40, height: screenHeight - 40)
        
        view.addSubview(background)
        view.addSubview(score)
        view.addSubview(mole)
        self.view = view
    }
    
    @objc func moleHit(_ sender:UIButton!) {
        print("NICE!")
    }

}

