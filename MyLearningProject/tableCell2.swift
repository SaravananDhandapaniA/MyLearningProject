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
        img2.circleImage()
    }
   

    
//    func config(_ nameLabel: String , _ currentSprintLabel:String){
//        name2.text = nameLabel
//        currentSprint2.text = currentSprintLabel
//    }
    
    func config(_ data:CompanyData  , _ image:String){
        name2.text = data.name
        currentSprint2.text = data.currentSprint
        img2.image = UIImage(named: image)
    }

}
