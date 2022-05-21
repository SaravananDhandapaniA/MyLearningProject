//
//  SettingsViewController.swift
//  MyLearningProject
//
//  Created by Tringapps on 20/05/22.
//

import UIKit

class SettingsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var settingsTableView: UITableView!
    var settingsItems = ["Profile", "General", "Accessibility", "Privacy", "Password", "Safari", "News", "Translate", "Maps", "Shortcuts", "Health", "Siri & Search", "Photos", "Game Center"]
    override func viewDidLoad() {
        super.viewDidLoad()
        settingsTableView.delegate = self
        settingsTableView.dataSource = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settingsItems.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "settingsProfileIdentifier", for: indexPath) as? SettingsProfile else {return UITableViewCell()}
            cell.settingsProfileImage.image = UIImage(named: settingsItems[indexPath.row])
        return cell
        } else {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "settingsItemsIdentifier", for: indexPath) as? SettingsItems else {return UITableViewCell()}
            cell.settingsItemImage.image = UIImage(named: settingsItems[indexPath.row])
            cell.settingsItemLabel.text = settingsItems[indexPath.row]
            return cell
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        var height: CGFloat = CGFloat()
        if indexPath.row == 0 {
            height = 120
        } else {
            height = 50
        }
        return height
    }
}
