//
//  SettingsDetailViewController.swift
//  MyLearningProject
//
//  Created by Tringapps on 24/05/22.
//

import UIKit

class SettingsDetailViewController: UIViewController {

    @IBOutlet weak var detailLabel: UILabel!
    static var settingsDetailIdentifier = "SettingsDetailViewController"
    var data: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        detailLabel.text = data
    }
}
