//
//  RatingViewController.swift
//  NewApp
//
//  Created by user on 13.07.2023.
//

import UIKit

class RatingViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    var player = Database.player
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return player.count
    }
    // smachno


    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") as! rattingCell
        cell.imageCell.image = player[indexPath.row].image
        cell.labelCell.text = player[indexPath.row].name
        cell.scoreCell.text = "Score : \(player[indexPath.row].score)"
        
        return cell
    }
    func reloadView() {
        
    }
    //var tableView = tableViewCells
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewCells.delegate = self
        tableViewCells.dataSource = self
        
        //self.navigationItem.hidesBackButton = true;
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var tableViewCells: UITableView!
    
  
}
