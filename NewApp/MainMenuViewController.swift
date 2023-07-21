//
//  MainMenuViewController.swift
//  NewApp
//
//  Created by user on 20.07.2023.
//

import UIKit

class MainMenuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AIGame" {
            let destination = segue.destination as! ViewController
            destination.game.AIGame = true
        }
    }
    

}
