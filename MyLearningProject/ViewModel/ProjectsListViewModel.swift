//
//  ProjectsListViewModel.swift
//  MyLearningProject
//
//  Created by Tringapps on 24/05/22.
//

import Foundation
import UIKit

class ProjectsListViewModel {
    let imageArrayForCollectionView = [ProjectsListModel(imageList: ["Image1", "Image2", "Image3", "Image4"])]
    func cellForItemAt(indexPath: IndexPath) -> ProjectsListModel {
        return imageArrayForCollectionView[indexPath.section]
    }
    func didSelectItemAt(indexPath: IndexPath) -> ProjectsListModel {
        return imageArrayForCollectionView[indexPath.section]
    }
}
