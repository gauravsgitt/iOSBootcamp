//
//  MovieListTVC.swift
//  Assignment-10
//
//  Created by Gaurav Bisht on 18/10/21.
//

import UIKit

class MovieListTVC: UITableViewCell {

    @IBOutlet weak var moviesCollectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
       
        setUpCollectionView()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    private func setUpCollectionView(){
        
        moviesCollectionView.delegate = self
        moviesCollectionView.dataSource = self
        
        let nib = UINib.init(nibName: "MCollectionViewCell", bundle: nil)
        moviesCollectionView.register(nib, forCellWithReuseIdentifier: "MCollectionViewCell")
    }
    
}
extension MovieListTVC: UICollectionViewDelegate, UICollectionViewDataSource , UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = moviesCollectionView.dequeueReusableCell(withReuseIdentifier: "MCollectionViewCell", for: indexPath) as? MCollectionViewCell
        cell?.layer.borderWidth = 5
        cell?.layer.borderColor = CGColor.init(red: 0/255, green: 0/255, blue: 0/255, alpha: 1)
        return cell!
        
    }
}
