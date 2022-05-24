//
//  SettingsViewModel.swift
//  MyLearningProject
//
//  Created by Tringapps on 23/05/22.
//

import Foundation
import UIKit

class SettingsViewModel {
    var settingsItems = [SettingsModel(about: "Profile", list: ["Profile"]),
                         SettingsModel(about: "Context", list: ["General", "Accessibility", "Privacy"]),
                         SettingsModel(about: "Security", list: ["Password"]),
                         SettingsModel(about: "Apps", list: ["Safari", "News", "Translate", "Maps", "Shortcuts", "Health", "Siri & Search", "Photos", "Game Center"])]
    func numberOfRowsInSection(section: Int) -> Int {
        return settingsItems[section].list.count
    }
    func cellForRowAt(indexPath: IndexPath) -> SettingsModel {
        return settingsItems[indexPath.section]
    }
    func numberOfSections(tableView: UITableView) -> Int {
        return settingsItems.count
    }
    func titleForHeaderInSection(section: Int) -> String {
        return settingsItems[section].about
    }
    func didSelectRowAt(indexPath: IndexPath) -> SettingsModel {
        return settingsItems[indexPath.section]
    }
}
