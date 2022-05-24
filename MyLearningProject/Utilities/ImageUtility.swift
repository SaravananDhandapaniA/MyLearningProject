//
//  ImageUtility.swift
//  MyLearningProject
//
//  Created by Tringapps on 24/05/22.
//

import Foundation
import UIKit

extension UIImageView {
    func circleImage() {
        self.clipsToBounds = true
        self.layer.masksToBounds = true
        self.layer.cornerRadius = self.frame.size.width / 2
        self.layer.cornerRadius = self.frame.size.height / 2
   }
}
