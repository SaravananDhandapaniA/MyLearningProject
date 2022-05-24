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
    var viewModel = ProjectsListViewModel()
    var data = [CompanyData]()
    weak var delegate: CollectionViewDataDelegate?

    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        return data.count
    }
func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let viewData = viewModel.cellForItemAt(indexPath: indexPath)
        guard let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: CollectionViewCell.collectionIdentifier, for: indexPath) as? CollectionViewCell else {return UICollectionViewCell()}
    cell.configForCollectionViewCell(viewData.imageList[indexPath.row], data[indexPath.row])
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let selectedData = viewModel.didSelectItemAt(indexPath: indexPath)
        self.delegate?.collectionItemsTapped(selectedData.imageList[indexPath.row], data[indexPath.row])
    }
}
