//
//  CollectionViewCell.swift
//  MyLearningProject
//
//  Created by Tringapps on 11/05/22.
//

import UIKit



class CollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    // weak var delegate:CollectionTappedDelegate?
    
    func circleImage(){
        imageView.clipsToBounds = true
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = imageView.frame.size.width / 2
        imageView.layer.cornerRadius = imageView.frame.size.height / 2

    }
    
    
    func configure(_ image : String /*,_ name:String*/)
   {
       imageView.image = UIImage(named: image)
      // nameLabel.text = name
   }
    
    
    
    
}
