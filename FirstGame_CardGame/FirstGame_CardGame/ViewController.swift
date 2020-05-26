//
//  ViewController.swift
//  FirstGame_CardGame
//
//  Created by Pratik Joshi on 5/26/20.
//  Copyright © 2020 Pratik Joshi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func dealTapped(_ sender: Any) {
        
        // Randomize some numbers
        let leftNumber = Int.random(in: 2...14)
        
        let rightNumber = Int.random(in: 2...14)
        
        // Update the image Views
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        // Compare the random numbers
        if leftNumber > rightNumber {
            // Left Side Wins!
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
        }
        else if leftNumber < rightNumber {
            // Right Side Wins!
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        }
        else{
            // Tie
        }
        
    }
    

}

