//
//  ButtonsViewController.swift
//  RockPaperScissors
//
//  Created by Uldis Zingis on 30/09/16.
//  Copyright © 2016 Uldis Zingis. All rights reserved.
//

import UIKit

class ButtonsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let nextVC = segue.destination as? ResultViewController {
            if segue.identifier == "rock" {
                nextVC.userChoice = "rock"
            } else if segue.identifier == "paper" {
                nextVC.userChoice = "paper"
            } else if segue.identifier == "scissors" {
                nextVC.userChoice = "scissors"
            }
        }
    }

}
