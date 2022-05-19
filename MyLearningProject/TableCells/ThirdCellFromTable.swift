//
//  tableCell3.swift
//  MyLearningProject
//
//  Created by Tringapps on 11/05/22.
//

import UIKit

protocol CollectionTappedDelegate: NSObjectProtocol{
    func collectionImageTapped(_ image: String , _ name: String? ,_ currSprint:String? , _ startDate: String?)
    
}



class ThirdCellFromTable: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    static let thirdCellIdentifier = "thirdCellIdentifier"
    
    var data = [CompanyData]()
    
    weak var delegate:CollectionTappedDelegate?
    
    let imageArrayForCollectionView = ["Remo","Viswasam","Jumanji","HarryPotter"]

    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.collectionViewCellIdentifier, for: indexPath) as? CollectionViewCell else {return UICollectionViewCell()}
        cell.configForCollectionViewCell(imageArrayForCollectionView[indexPath.row], data[indexPath.row])
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        self.delegate?.collectionImageTapped(imageArrayForCollectionView[indexPath.row],data[indexPath.row].name,data[indexPath.row].currentSprint, data[indexPath.row].startDate)
        
    }
 

}
