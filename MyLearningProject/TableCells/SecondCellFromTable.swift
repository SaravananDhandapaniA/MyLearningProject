//
//  tableCell2.swift
//  MyLearningProject
//
//  Created by Tringapps on 11/05/22.
//

import UIKit

class SecondCellFromTable: UITableViewCell {
    
    @IBOutlet weak var secondCellImageView: UIImageView!
    
    @IBOutlet weak var secondCellNameLabel: UILabel!
    
    @IBOutlet weak var secondCellCurrentSprintLabel: UILabel!
    
    static let secondCellIdentifier = "secondCellIdentifier"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        secondCellImageView.circleImage()
    }

    func configForSecondCell(_ data:CompanyData  , _ image:String){
        secondCellNameLabel.text = data.name
        secondCellCurrentSprintLabel.text = data.currentSprint
        secondCellImageView.image = UIImage(named: image)
    }

}
