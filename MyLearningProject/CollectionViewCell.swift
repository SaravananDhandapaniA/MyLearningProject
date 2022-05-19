//
//  CollectionViewCell.swift
//  MyLearningProject
//
//  Created by Tringapps on 11/05/22.
//

import UIKit



class CollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var imageView1: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    // weak var delegate:CollectionTappedDelegate?
    
    override class func awakeFromNib() {
        super.awakeFromNib()
        
    }
   
    func configure(_ image : String )
   {
       imageView1.image = UIImage(named: image)
       imageView1.circleImage()

   }
    
    
    
    
}
