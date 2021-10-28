//
//  MovieList.swift
//  Assignment-10
//
//  Created by Gaurav Bisht on 18/10/21.
//

import UIKit

class MovieList: UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var movieTableView: UITableView!
    
    var moviesCategoryArr = ["Action", "Drama", "Science Fiction", "Kids", "Horror"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpTableView()
        setupNavBar()
    }
    
    
    private func setUpTableView()
    {
        movieTableView.delegate = self
        movieTableView.dataSource = self
      
        
        let nib = UINib.init(nibName: "MovieListTVC", bundle: nil)
        movieTableView.register(nib, forCellReuseIdentifier: "MovieListTVC")
    }
    
    // setting NavBar
    private func setupNavBar(){
        
        let navBarAppearence = UINavigationBarAppearance()
        navBarAppearence.backgroundColor = UIColor.systemBackground
        
        navigationController?.navigationBar.standardAppearance = navBarAppearence
        navigationController?.navigationBar.scrollEdgeAppearance = navBarAppearence
        navigationController?.navigationBar.backIndicatorImage = UIImage(systemName: "arrow.left")
        
        navigationController?.navigationBar.layer.shadowColor = UIColor.black.cgColor
        navigationController?.navigationBar.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        navigationController?.navigationBar.layer.shadowRadius = 4.0
        navigationController?.navigationBar.layer.shadowOpacity = 1.0
        navigationController?.navigationBar.layer.masksToBounds = false
    }
    
    @IBAction func backToHome(_ sender: UIBarButtonItem) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
extension MovieList{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return moviesCategoryArr.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = movieTableView.dequeueReusableCell(withIdentifier: "MovieListTVC", for: indexPath) as? MovieListTVC
//        cell?.layer.borderColor = CGColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1)
//        cell?.layer.borderWidth = 5
//        return cell!
        let cell = movieTableView.dequeueReusableCell(withIdentifier: "MovieListTVC", for: indexPath) as? MovieListTVC
        cell?.layer.borderColor = CGColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1)
        cell?.layer.borderWidth = 5
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section < moviesCategoryArr.count {
            return moviesCategoryArr[section]
        }
        return nil
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        
        guard let header = view as? UITableViewHeaderFooterView else { return }
            header.textLabel?.textColor = UIColor.black
            header.textLabel?.font = UIFont.boldSystemFont(ofSize: 20)
            header.textLabel?.frame = header.bounds
            header.textLabel?.textAlignment = .left
        
    }
}

