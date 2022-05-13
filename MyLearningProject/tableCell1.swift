//
//  tableCell1.swift
//  MyLearningProject
//
//  Created by Tringapps on 11/05/22.
//

import UIKit

class tableCell1: UITableViewCell {
    
    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var currentSprint: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    

    func circleImage(){
        img.clipsToBounds = true
        img.layer.masksToBounds = true
        img.layer.cornerRadius = img.frame.size.width / 2
        img.layer.cornerRadius = img.frame.size.height / 2
    }
    
    func config(_ nameLabel: String , _ currentSprintLabel:String){
        name.text = nameLabel
        currentSprint.text = currentSprintLabel
    }

}
