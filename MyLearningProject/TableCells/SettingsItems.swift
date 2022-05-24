//
//  SettingsItems.swift
//  MyLearningProject
//
//  Created by Tringapps on 21/05/22.
//

import UIKit

class SettingsItems: UITableViewCell {
    @IBOutlet weak var settingsItemImage: UIImageView!
    @IBOutlet weak var settingsItemLabel: UILabel!
    static let settingsItemsIdentifier = "settingsItemsIdentifier"

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    func configForAllItems(_ imageName: String) {
        settingsItemImage.image = UIImage(named: imageName)
        settingsItemLabel.text = imageName
    }
}
