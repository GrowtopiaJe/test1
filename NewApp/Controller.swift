//
//  Controller.swift
//  NewApp
//
//  Created by user on 13.07.2023.
//

import Foundation

class TicTacToe {
    var XOs:[XO] = []
    var indexUp = 0
    var gameFinished = false
    var winCombination = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
    var AIGame : Bool = false
    init() {
        for _ in 0...8 {
            let XO1 = XO()
            XOs.append(XO1)
        }
    }
    
    func restart()
    {
        XOs.removeAll()
        indexUp = 0
        
        for _ in 0...8 {
            let XO1 = XO()
            XOs.append(XO1)
        }
        
    }
    
    func writeXO(at index:Int) {
        indexUp += 1
        if indexUp%2 == 0 {
            XOs[index].label = "⭕️"
        }
        else {
            XOs[index].label = "❌"
        }
        XOs[index].isFaceUp = true
        if AIGame  && indexUp<9  && gameFinished != true {
            var indexAI = Int.random(in: 0...8)
            while XOs[indexAI].isFaceUp {
                indexAI = Int.random(in: 0...8)
                
            }
        
            indexUp += 1
            if indexUp%2 == 0 {
                XOs[indexAI].label = "⭕️"
            }
            else {
                XOs[indexAI].label = "❌"
            }
            XOs[indexAI].isFaceUp = true
        }
    }
    func winner() -> String? {
        for i in winCombination {
            if XOs[i[0]].label == XOs[i[1]].label && XOs[i[1]].label == XOs[i[2]].label && XOs[i[0]].isFaceUp {
                gameFinished = true
                return XOs[i[0]].label
            }
        }
        if indexUp >= 9 {
            gameFinished = true
            return "Draw"
        }
        
        return nil
    }
}
