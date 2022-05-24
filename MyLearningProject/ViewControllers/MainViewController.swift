//
//  ViewController.swift
//  MyLearningProject
//
//  Created by Tringapps on 11/05/22.
//

import UIKit

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, CollectionViewDataDelegate {

  @IBOutlet weak var tableView: UITableView!

    var viewModel = ComapanyDataViewModel()
    var imageArrayForTableView = ["Image1", "Image2"]
    override func viewDidLoad() {
        super.viewDidLoad()
        loadCompanyData()
    }
    func loadCompanyData() {
        viewModel.fetchCompanyData {
            DispatchQueue.main.async {
                self.tableView.dataSource = self
                self.tableView.delegate = self
                self.tableView.reloadData()
                self.tableView.rowHeight = 160
            }
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

    return viewModel.numberOfRowsInSection(section: section)
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let viewData = viewModel.cellForRowAt(indexPath: indexPath)
        if indexPath.row == 0 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: CompanyProject1.Project1Identifier, for: indexPath) as? CompanyProject1 else {return UITableViewCell()}
            cell.configForProject1(viewData, imageArrayForTableView[indexPath.row])
            return cell
        } else if indexPath.row == 1 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: CompanyProject2.project2Identifier, for: indexPath) as? CompanyProject2 else {return UITableViewCell()}
            cell.configForProject2(viewData, imageArrayForTableView[indexPath.row])
           return cell
        } else {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: ProjectsList.projectsListIdentifier, for: indexPath) as? ProjectsList else {return UITableViewCell()}
            cell.data = self.viewModel.companyData
            cell.delegate = self
           return cell
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let presentDetailsVC = storyboard?.instantiateViewController(withIdentifier: PresentDetailsViewController.PresentDetailsIdentifier) as? PresentDetailsViewController else {return}
        let selectedData = viewModel.didSelectRowAt(indexPath: indexPath)
         presentDetailsVC.image = UIImage(named: imageArrayForTableView[indexPath.row])
         presentDetailsVC.presentData = selectedData
        self.present(presentDetailsVC, animated: true, completion: nil)
    }
    func collectionItemsTapped(_ image: String, _ data: CompanyData) {
        guard let presentDetailsVC = storyboard?.instantiateViewController(withIdentifier: PresentDetailsViewController.PresentDetailsIdentifier) as? PresentDetailsViewController else {return}
        presentDetailsVC.image = UIImage(named: image)
        presentDetailsVC.presentData = data
        self.present(presentDetailsVC, animated: true, completion: nil)
    }
}
