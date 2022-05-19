//
//  CollectionViewCell.swift
//  MyLearningProject
//
//  Created by Tringapps on 11/05/22.
//

import UIKit



class CollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var collectionViewImage: UIImageView!
    
    @IBOutlet weak var collectionViewNameLabel: UILabel!
    
    static let collectionViewCellIdentifier = "collectionViewCellIdentifier"
    
    override class func awakeFromNib() {
        super.awakeFromNib()
        
    }
   
    func configForCollectionViewCell(_ image : String , _ data : CompanyData)
   {
       collectionViewImage.image = UIImage(named: image)
       collectionViewNameLabel.text = data.name
       collectionViewImage.circleImage()

   }
    

}
