//
//  winnerViewController.swift
//  NewApp
//
//  Created by user on 18.07.2023.
//

import UIKit

class winnerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // LET TIM COOK 🗣️🗣️🗣️🔥🔥🔥🔥
    
    
    @IBOutlet weak var winnerTextField: UITextField!
    
    @IBAction func winnerTextButton(_ sender: UIButton) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "rating" {
            let destination = segue.destination as! RatingViewController
            if winnerTextField.text != "" {
               // sorted()
                //destination.player.append(Player(name: winnerTextField.text,image: UIImage.init(named: "220.jpeg")))
                //var playerArray = RatingViewController.Database.player
                var indexbool = false
                var index:Int = -1
                for i in Database.player.indices {
                    if Database.player[i].name == winnerTextField.text {
                       index = i
                       indexbool = true
                    }
                }
                
                if indexbool && index != -1 {
                    
                    Database.player[index].score += 50
                    destination.player[index].score += 50
                   // playerArray[]
                }
                else {
                    Database.player.append(Player(name: winnerTextField.text,image: UIImage.init(named: "220.jpeg"),score: 50))
                    destination.player.append(Player(name: winnerTextField.text,image: UIImage.init(named: "220.jpeg"),score: 50))
                }

                self.navigationController?.popToRootViewController(animated: true)
                Database.player.sort{$0.score > $1.score}
                destination.player.sort{$0.score > $1.score}

                // self.navigationController?.popToViewController(next, animated: false)
            }
        }
    }
}
