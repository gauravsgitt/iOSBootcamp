//
//  ViewController.swift
//  iOSAssessment-12
//
//  Created by Gaurav Bisht on 25/10/21.
//

import UIKit

class GalleryViewController: UIViewController {

    //MARK: - IBOutlet
    @IBOutlet weak var galleryItemCollectionView: UICollectionView!
    
    
    //MARK: - Properties
    var imageList = [Images]()
    var queue = OperationQueue()
    
    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
       // setUpNavBar(of: UIColor().customBlueColor)
        addLogoToNavigationBarItem()
        loadingData()
        setupCollectionView()
    }
    
    
    //MARK: - Methods
    private func setupCollectionView() {
        galleryItemCollectionView.dataSource = self
        galleryItemCollectionView.delegate = self
    }
    
    private func loadingData() {
        
        let url = URL(string: "https://picsum.photos/list")
        URLSession.shared.dataTask(with: url!){(data,response,error) in
            if error == nil{
                
                do{
                self.imageList = try JSONDecoder().decode([Images].self, from: data!)
                }catch{
                    print("Parse Error")
                }
                
                DispatchQueue.main.async {
                    self.galleryItemCollectionView.reloadData()
                }
            }
        }.resume()
        
    }
    
}




//MARK: - CollectionViewDelegate and DataSource

extension GalleryViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageList.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GalleryItemsCollectionViewCell", for: indexPath) as! GalleryItemsCollectionViewCell
        cell.galleryItemName.text = imageList[indexPath.row].author.capitalized
        let completeLink = defaultLink + String(imageList[indexPath.row].id)
        //cell.galleryItemImage.downloaded(from: completeLink)
        
        var img: UIImage!
        let operation = BlockOperation(block: {
            img  = Downloader.downloadImageWithURl(completeLink)
        })

        operation.completionBlock = {
            DispatchQueue.main.async {
                cell.galleryItemImage.image = img
            }

        }
        queue.addOperation(operation)
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {

        let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(identifier: "GallaryPhotoDetailViewController") as? GallaryPhotoDetailViewController
        vc?.imageId = String(imageList[indexPath.row].id)
        vc?.author_url = String(imageList[indexPath.row].author_url)
        self.navigationController?.pushViewController(vc!, animated: true)
//        flag = true
//        Constants.setRoot()
    }
}



//MARK: - UICollectionViewDelegateFlowLayout
extension GalleryViewController: UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (collectionView.bounds.width - 40 ) / 2, height: 200)
    }

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    }

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }
    
}

class Downloader {
    class func downloadImageWithURl(_ url: String) -> UIImage! {
        if let data = try? Data(contentsOf: URL(string: url)!) {
            return UIImage(data: data)!
        }
        return nil
    }

}
