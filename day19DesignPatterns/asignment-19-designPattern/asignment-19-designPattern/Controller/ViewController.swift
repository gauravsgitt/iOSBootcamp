//
//  ViewController.swift
//  asignment-19-designPattern
//
//  Created by Gaurav Bisht on 07/11/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }

    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return PlayersData.shared.dataArray.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250.0;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell") as! MyCell
        
        cell.nameLbl.text = PlayersData.shared.dataArray[indexPath.row].name
        cell.sportLbl.text = PlayersData.shared.dataArray[indexPath.row].sport
        cell.emailLbl.text = PlayersData.shared.dataArray[indexPath.row].email
        
        return cell
    }
}

