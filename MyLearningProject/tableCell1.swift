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
        img.circleImage()
        
    }
    

    
    
    func config(_ data: CompanyData, _ image : String){
        name.text = data.name
        currentSprint.text = data.currentSprint
        img.image = UIImage(named: image)
    }

}

extension UIImageView {
    
    func circleImage(){
        self.clipsToBounds = true
        self.layer.masksToBounds = true
       self.layer.cornerRadius = self.frame.size.width / 2
       self.layer.cornerRadius = self.frame.size.height / 2
   }
}
