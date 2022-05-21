//
//  tableCell1.swift
//  MyLearningProject
//
//  Created by Tringapps on 11/05/22.
//

import UIKit

class FirstCellFromTable: UITableViewCell {

    @IBOutlet weak var firstCellImageView: UIImageView!
    @IBOutlet weak var firstCellNameLabel: UILabel!
    @IBOutlet weak var firstCellCurrentSprintLabel: UILabel!
    static let firstCellIdentifier = "firstCellIdentifier"

    override func awakeFromNib() {
        super.awakeFromNib()
        firstCellImageView.circleImage()
    }
    func configForFirstCell(_ data: CompanyData, _ image: String) {
        firstCellNameLabel.text = data.name
        firstCellCurrentSprintLabel.text = data.currentSprint
        firstCellImageView.image = UIImage(named: image)
    }

}

extension UIImageView {
    func circleImage() {
        self.clipsToBounds = true
        self.layer.masksToBounds = true
        self.layer.cornerRadius = self.frame.size.width / 2
        self.layer.cornerRadius = self.frame.size.height / 2
   }
}
