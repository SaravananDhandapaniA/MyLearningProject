//
//  tableCell2.swift
//  MyLearningProject
//
//  Created by Tringapps on 11/05/22.
//

import UIKit

class tableCell2: UITableViewCell {
    
    
    @IBOutlet weak var img2: UIImageView!
    
    @IBOutlet weak var name2: UILabel!
    
    @IBOutlet weak var currentSprint2: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
   
    func circleImage(){
        img2.clipsToBounds = true
        img2.layer.masksToBounds = true
        img2.layer.cornerRadius = img2.frame.size.width / 2
        img2.layer.cornerRadius = img2.frame.size.height / 2
    }
    
    func config(_ nameLabel: String , _ currentSprintLabel:String){
        name2.text = nameLabel
        currentSprint2.text = currentSprintLabel
    }

}
