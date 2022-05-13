//
//  tableCell3.swift
//  MyLearningProject
//
//  Created by Tringapps on 11/05/22.
//

import UIKit
protocol CollectionTappedDelegate: NSObjectProtocol{
    func collectionImageTapped(_ image: String )
    
}



class tableCell3: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    
    weak var delegate:CollectionTappedDelegate?
    
    let collectedImages = ["Remo","Viswasam","Jumanji","HarryPotter"]
    
    var data1 = [companyData]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        collectionView.delegate = self
        collectionView.dataSource = self
        
    }

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        return collectedImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Constant.collectionViewCellIdentifier, for: indexPath) as? CollectionViewCell
       // cell?.nameLabel.text = data1[indexPath.row].name
        cell?.configure(collectedImages[indexPath.row])
        cell?.circleImage().self
        return cell!
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        self.delegate?.collectionImageTapped(collectedImages[indexPath.row])
        
    }
 

}
