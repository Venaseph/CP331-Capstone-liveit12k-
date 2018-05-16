//
//  ViewController.swift
//  liveit12k
//
//  Created by Chris Peragine on 5/6/18.
//  Copyright © 2018 South Hills Capstone. All rights reserved.
//

import UIKit
import Lottie

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let animationView: LOTAnimationView = LOTAnimationView(name: "liveitani")
        let screenSize: CGRect = UIScreen.main.bounds
        print(screenSize.width)
        
        animationView.contentMode = .scaleAspectFill
        animationView.frame = CGRect(x: (screenSize.width/2)-100, y: (screenSize.height/2)-125, width: 200, height: 250)
        
        self.view.addSubview(animationView)
        // Lets turn looping on, since we want it to repeat while the image is 'Downloading'
        animationView.loopAnimation = true
        // Now play from 0 to 0.5 progress and loop indefinitely.
        animationView.play(fromProgress: 0, toProgress: 1, withCompletion: nil)
        
        
        
    }

}
