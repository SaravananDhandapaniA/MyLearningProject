//
//  SecondViewController.swift
//  MyLearningProject
//
//  Created by Tringapps on 11/05/22.
//

import UIKit

class ActionViewController: UIViewController {
    @IBOutlet weak var secondVcImageView: UIImageView!
    @IBOutlet weak var secondVcName: UILabel!
    @IBOutlet weak var secondVcCurrentSprint: UILabel!
    @IBOutlet weak var secondVcStartDate: UILabel!
    static let actionViewControllerIdentifier = "ActionViewController"

    var image: UIImage?
    var name: String?
    var currentSprint: String?
    var startDate: String?
    var userData: CompanyData?
    override func viewDidLoad() {
        super.viewDidLoad()

        secondVcImageView.image = image
        secondVcName.text = name
        secondVcCurrentSprint.text = currentSprint
        secondVcStartDate.text = startDate

        secondVcImageView.circleImage()
    }
}
