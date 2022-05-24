//
//  tableCell1.swift
//  MyLearningProject
//
//  Created by Tringapps on 11/05/22.
//

import UIKit

class CompanyProject1: UITableViewCell {
    @IBOutlet weak var project1Image: UIImageView!
    @IBOutlet weak var project1NameLabel: UILabel!
    @IBOutlet weak var project1CurrentSprintLabel: UILabel!
    static let Project1Identifier = "project1Identifer"

    override func awakeFromNib() {
        super.awakeFromNib()
        project1Image.circleImage()
    }
    func configForProject1(_ data: CompanyData, _ image: String) {
        project1NameLabel.text = data.name
        project1CurrentSprintLabel.text = data.currentSprint
        project1Image.image = UIImage(named: image)
    }
}
