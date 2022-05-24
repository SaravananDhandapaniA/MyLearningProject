//
//  SampleViewController.swift
//  MyLearningProject
//
//  Created by Tringapps on 20/05/22.
//

import UIKit

class SampleViewController: UIViewController {

    @IBOutlet weak var sampleLabel: UILabel!
    var sampleText = "Welcome"
    override func viewDidLoad() {
        super.viewDidLoad()
        sampleLabel.text = sampleText
    }
}
