//
//  ViewController.swift
//  NewApp
//
//  Created by user on 11.07.2023.
//

import UIKit
var Toggle = false
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        winnerButton.isHidden = true
        
        // Do any additional setup after loading the view.
        
    }
    var game = TicTacToe()
    
    @IBOutlet weak var winLabell: UILabel!
    @IBOutlet var ArrayButtons: [UIButton]!
    
    @IBAction func buttonClick(_ sender: UIButton) {
        let index = ArrayButtons.firstIndex(of: sender)!
        game.writeXO(at: index)
        updateView()
    }
    
    @IBAction func restartButton(_ sender: UIButton) {
        game.restart()
        updateView()
        winLabell.text = ""
    }

    
    @IBOutlet weak var winnerButton: UIButton!
    func updateView() {
        for i in ArrayButtons.indices {
         let button = ArrayButtons[i]
            let card = game.XOs[i]
            if card.isFaceUp {
                button.setTitle(card.label,for: .normal)
                button.isEnabled = false
            }
            else {
                button.setTitle("", for: .normal)
                button.isEnabled = true
            }
        }
        if let win = game.winner() {
            winLabell.text = "Winner: \(win)"
            for i in ArrayButtons {
                i.isEnabled = false
            }
            
            if win != "Draw" {
                winnerButton.isEnabled = true
                winnerButton.isHidden = false
            }
        }
    }
}

