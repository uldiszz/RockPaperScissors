//
//  Score.swift
//  RockPaperScissors
//
//  Created by Uldis Zingis on 30/09/16.
//  Copyright © 2016 Uldis Zingis. All rights reserved.
//

import Foundation

class Score {
    static let sharedScore = Score(userScore: 0, iosScore: 0)
    
    var userScore: Int
    var iosScore: Int
    
    init(userScore: Int, iosScore: Int) {
        self.userScore = userScore
        self.iosScore = iosScore
    }
}
