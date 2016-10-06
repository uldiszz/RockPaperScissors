//
//  ResultViewController.swift
//  RockPaperScissors
//
//  Created by Uldis Zingis on 30/09/16.
//  Copyright © 2016 Uldis Zingis. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var userScoreLabel: UILabel!
    @IBOutlet weak var iosScoreLabel: UILabel!
    
    let choices: [String] = ["rock", "paper", "scissors"]
    var userChoice: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = result()
        userScoreLabel.text = "Your score: " + String(Score.sharedScore.userScore)
        iosScoreLabel.text = "Phone's score: " + String(Score.sharedScore.iosScore)
    }
    
    func result() -> String {
        let randNumber = Int(arc4random_uniform(3))
        let iosChoice: String = choices[randNumber]
        guard let userChoice = userChoice else {
            return ""
        }
        switch iosChoice {
        case userChoice:
            return "Tie! 😯"
        case "rock":
            if userChoice == "paper" {
                Score.sharedScore.userScore += 1
                return "You win! 👍 \n\n(paper beats rock)"
            } else {
                Score.sharedScore.iosScore += 1
                return "You lose... 👎 \n\n(rock beats \(userChoice))"
            }
        case "paper":
            if userChoice == "scissors" {
                Score.sharedScore.userScore += 1
                return "You win! 👍 \n\n(scissors beats paper)"
            } else {
                Score.sharedScore.iosScore += 1
                return "You lose... 👎 \n\n(paper beats \(userChoice))"
            }
        case "scissors":
            if userChoice == "rock" {
                Score.sharedScore.userScore += 1
                return "You win! 👍 \n\n(rock beats scissors)"
            } else {
                Score.sharedScore.iosScore += 1
                return "You lose... 👎 \n\n(scissors beats \(userChoice))"
            }
        default:
            return "Something went wrong..."
        }
    }
}
