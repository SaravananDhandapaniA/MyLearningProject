//
//  tableCell3.swift
//  MyLearningProject
//
//  Created by Tringapps on 11/05/22.
//

import UIKit

protocol CollectionViewDataDelegate: NSObjectProtocol {
    func collectionItemsTapped(_ image: String, _ data: CompanyData)
}

class ProjectsList: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {
    @IBOutlet weak var collectionView: UICollectionView!
    static let projectsListIdentifier = "projectsListIdentifier"
    var data = [CompanyData]()
    weak var delegate: CollectionViewDataDelegate?
    let imageArrayForCollectionView = ["Image1", "Image2", "Image3", "Image4"]

    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        return data.count
    }
func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: CollectionViewCell.collectionIdentifier, for: indexPath) as? CollectionViewCell
    else {return UICollectionViewCell()}
        cell.configForCollectionViewCell(imageArrayForCollectionView[indexPath.row], data[indexPath.row])
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    self.delegate?.collectionItemsTapped(imageArrayForCollectionView[indexPath.row], data[indexPath.row])
    }
}
