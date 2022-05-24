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
    static let settingsProfileIdentifier = "settingsProfileIdentifier"
    var textForSignIn = "Sign in to your iPhone"
    var textForSetup = "Set up iCoud, the AppStrore and more"
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        settingsProfileImage.circleImage()
    }
    func configForProfile(_ image: String) {
        settingsProfileImage.image = UIImage(named: image)
        settingsProfileSignInLabel.text = textForSignIn
        settingsProfileSetupLabel.text = textForSetup
    }
}
