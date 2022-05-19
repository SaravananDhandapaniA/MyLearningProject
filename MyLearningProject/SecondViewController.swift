//
//  SecondViewController.swift
//  MyLearningProject
//
//  Created by Tringapps on 11/05/22.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var secondVcImageView: UIImageView!
    
    @IBOutlet weak var secondVcName: UILabel!
    
    @IBOutlet weak var secondVcCurrentSprint: UILabel!
        
    @IBOutlet weak var secondVcStartDate: UILabel!
    
    
    var image = UIImage()
    var name =  ""
    var currentSprint =  ""
    var startDate =  ""
    override func viewDidLoad() {
        super.viewDidLoad()

        secondVcImageView.image = image
        secondVcName.text = name
        secondVcCurrentSprint.text = currentSprint
        secondVcStartDate.text = startDate

        
        secondVcImageView.clipsToBounds = true
        secondVcImageView.layer.masksToBounds = true
        secondVcImageView.layer.cornerRadius = secondVcImageView.frame.size.width / 2
        secondVcImageView.layer.cornerRadius = secondVcImageView.frame.size.height / 2
    }

//    func config(_ data:companyData,_ image :String){
//        secondVcImageView.image = UIImage(named: image)
//        secondVcName.text = data.name
//        secondVcCurrentSprint.text = data.currentSprint
//        secondVcStartDate.text = data.startDate
//    }

}
