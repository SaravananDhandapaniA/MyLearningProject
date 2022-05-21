//
//  SettingsProfile.swift
//  MyLearningProject
//
//  Created by Tringapps on 20/05/22.
//

import UIKit

class SettingsProfile: UITableViewCell {
    @IBOutlet weak var settingsProfileImage: UIImageView!
    @IBOutlet weak var settingsProfileSignInLabel: UILabel!
    @IBOutlet weak var settingsProfileSetupLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        settingsProfileImage.circleImage()
    }
}
