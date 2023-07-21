//
//  Player.swift
//  NewApp
//
//  Created by user on 13.07.2023.
//

import Foundation
import UIKit

struct Player {
    var name:String?
    var image:UIImage?
    var score:Int = 0
    
}
struct Database {
   static var temporaryStorage:[Player] = []
    static var player:[Player] = [] //[Player(name:"BDSM-User",image:UIImage.init(named:"220.jpeg"),score: 0),Player(name:"Milfa",image: UIImage.init(named:"220.jpeg"),score: 0)]
}
func sorted(){
    Database.player.sort{$0.score > $1.score}
        
    }

