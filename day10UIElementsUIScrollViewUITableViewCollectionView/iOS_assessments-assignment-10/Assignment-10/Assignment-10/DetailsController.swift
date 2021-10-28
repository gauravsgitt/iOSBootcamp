//
//  DetailsController.swift
//  Assignment-10
//
//  Created by Gaurav Bisht on 18/10/21.
//

import UIKit

class DetailsController: UIViewController, UITableViewDelegate, UITableViewDataSource{
   
    
    @IBOutlet weak var usersListTableView: UITableView!
    
    var dataIS = [UsersListItemsModel]()
    var loadMoreData = [UsersListItemsModel]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpTableView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        usersListTableView.reloadData()
    }
    
    
    /// SetUpTableView
    private func setUpTableView(){
        
        usersListTableView.delegate = self
        usersListTableView.dataSource = self
        
        let nib = UINib.init(nibName: "UserTVC", bundle: nil)
        usersListTableView.register(nib, forCellReuseIdentifier: "UserTVC")
    }
    
    /// To Refresh Data on List
    private func dataRefresh(){
        dataIS = dataIS + loadMoreData.prefix(9)
        loadMoreData = Array(loadMoreData.dropFirst(9))
        
        usersListTableView.reloadData()
    }
  

}
extension DetailsController {
    
    @IBAction func loadMoreDataBttn(_ sender: UIButton) {
        dataRefresh()
    }
    
    
    @IBAction func refreshListButton(_ sender: UIBarButtonItem) {
        dataRefresh()
    }
    
    @IBAction func goToListButton(_ sender: UIBarButtonItem) {
        let myStoryborad = UIStoryboard.init(name: "Main", bundle: nil)
        
        let vc = myStoryborad.instantiateViewController(withIdentifier: "addDetails") as? addDetails
        vc?.delegate = self
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
}


//MARK: Table View DataSource Methods
extension DetailsController {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataIS.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = usersListTableView.dequeueReusableCell(withIdentifier: "UserTVC", for: indexPath) as? UserTVC
        let data = dataIS[indexPath.row]
        
        cell?.namrLbl.text = data.name
        cell?.addressLbl.text = data.address
        cell?.ageLbl.text = data.age
        cell?.odLbl.text = data.otherDetails
        cell?.outSideView.layer.borderColor = CGColor.init(red: 0/255, green: 0/255, blue: 0/255, alpha: 1)
        cell?.outSideView.layer.borderWidth = 3
        return cell!
    }

}


//MARK: UserListDelegate Storing Data
extension DetailsController: SendUsersListDelegate {
    func sendDataToList(content: UsersListItemsModel) {
        if dataIS.count < 9 {
            dataIS.append(content)
        } else {
            loadMoreData.append(content)
        }
    }
}
