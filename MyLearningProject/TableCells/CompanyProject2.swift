//
//  tableCell2.swift
//  MyLearningProject
//
//  Created by Tringapps on 11/05/22.
//

import UIKit

class CompanyProject2: UITableViewCell {
    @IBOutlet weak var project2ImageView: UIImageView!
    @IBOutlet weak var project2NameLabel: UILabel!
    @IBOutlet weak var project2CurrentSprintLabel: UILabel!
    static let project2Identifier = "project2Identifier"
    override func awakeFromNib() {
        super.awakeFromNib()
        project2ImageView.circleImage()
    }

    func configForProject2(_ data: CompanyData, _ image: String) {
        project2NameLabel.text = data.name
        project2CurrentSprintLabel.text = data.currentSprint
        project2ImageView.image = UIImage(named: image)
    }

}
