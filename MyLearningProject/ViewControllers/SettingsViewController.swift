//
//  SettingsViewController.swift
//  MyLearningProject
//
//  Created by Tringapps on 20/05/22.
//

import UIKit

class SettingsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var settingsTableView: UITableView!
    var viewModel = SettingsViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        settingsTableView.delegate = self
        settingsTableView.dataSource = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRowsInSection(section: section)
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let viewData = viewModel.cellForRowAt(indexPath: indexPath)
        if indexPath.row == 0 && indexPath.section == 0 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: SettingsProfile.settingsProfileIdentifier, for: indexPath) as? SettingsProfile else {return UITableViewCell()}
            cell.configForProfile(viewData.list[indexPath.row])
        return cell
        } else {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: SettingsItems.settingsItemsIdentifier, for: indexPath) as? SettingsItems else {return UITableViewCell()}
            cell.configForAllItems(viewData.list[indexPath.row])
            return cell
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedData = viewModel.didSelectRowAt(indexPath: indexPath)
        guard let settingsDetailVC = storyboard?.instantiateViewController(withIdentifier: SettingsDetailViewController.settingsDetailIdentifier) as? SettingsDetailViewController else {return}
        settingsDetailVC.data = selectedData.list[indexPath.row]
        self.present(settingsDetailVC, animated: true, completion: nil)
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        var height: CGFloat = CGFloat()
        if indexPath.row == 0  && indexPath.section == 0 {
            height = 120
        } else {
            height = 50
        }
        return height
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return viewModel.numberOfSections(tableView: tableView)
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return viewModel.titleForHeaderInSection(section: section)
    }
}
