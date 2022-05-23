//
//  SecondViewController.swift
//  MyLearningProject
//
//  Created by Tringapps on 11/05/22.
//

import UIKit

class PresentDetailsViewController: UIViewController {
    @IBOutlet weak var presentedImage: UIImageView!
    @IBOutlet weak var presentedNameLabel: UILabel!
    @IBOutlet weak var presentedCurrentSprintLabel: UILabel!
    @IBOutlet weak var presentedStartDate: UILabel!
    static let PresentDetailsIdentifier = "PresentDetailsViewController"

    var image: UIImage?
    var presentData: CompanyData?
    override func viewDidLoad() {
        super.viewDidLoad()
        setupData()
    }
    func setupData() {
        presentedImage.image = image
        presentedNameLabel.text = presentData?.name
        presentedCurrentSprintLabel.text = presentData?.currentSprint
        presentedStartDate.text = presentData?.startDate

        presentedImage.circleImage()

    }
}
