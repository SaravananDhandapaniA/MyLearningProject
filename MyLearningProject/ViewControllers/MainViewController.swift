//
//  ViewController.swift
//  MyLearningProject
//
//  Created by Tringapps on 11/05/22.
//

import UIKit


class MainViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource ,CollectionTappedDelegate{


  @IBOutlet weak var tableView: UITableView!

  var data = [CompanyData]()
    
  var imageArrayForTableView = ["Viswasam","Remo"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = 160

        networkParsing()
    }


    func networkParsing(){

        let urlString = "http://th-alb-1338985061.ap-south-1.elb.amazonaws.com/api/v1/projects/sprints"

        guard let url = URL(string: urlString) else {return}

        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print(error)
                return
            }
            guard let data = data else {
                return
            }
            do{
               let jsonData = try JSONDecoder().decode([CompanyData].self, from: data)
                self.data = jsonData
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
                
            }catch{
                print(error)
            }

        }.resume()
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return data.count - 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
  
        if indexPath.row == 0
        {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: FirstCellFromTable.firstCellIdentifier , for: indexPath) as? FirstCellFromTable else {return UITableViewCell()}
            cell.configForFirstCell(data[indexPath.row], imageArrayForTableView[indexPath.row])
            return cell
        }
        else if indexPath.row == 1
        {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: SecondCellFromTable.secondCellIdentifier, for: indexPath) as? SecondCellFromTable else{return UITableViewCell()}
            cell.configForSecondCell(data[indexPath.row], imageArrayForTableView[indexPath.row])
           return cell
        }
        else
        {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: ThirdCellFromTable.thirdCellIdentifier, for: indexPath) as? ThirdCellFromTable else {return UITableViewCell()}
            cell.data = self.data
            cell.delegate = self
           return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        guard let actionVC = storyboard?.instantiateViewController(withIdentifier: ActionViewController.actionViewControllerIdentifier) as? ActionViewController else{return}
        
        actionVC.image = UIImage(named: imageArrayForTableView[indexPath.row])
        actionVC.name = data[indexPath.row].name
        actionVC.currentSprint = data[indexPath.row].currentSprint
        actionVC.startDate = data[indexPath.row].startDate
        self.present(actionVC, animated: true, completion: nil)
    }
    
    func collectionImageTapped(_ image: String ,_ name:String? , _ currSprint:String? , _ startDate:String?) {
        
        guard let actionVC = storyboard?.instantiateViewController(withIdentifier: ActionViewController.actionViewControllerIdentifier) as? ActionViewController else{return}
        
        actionVC.image = UIImage(named: image)
        actionVC.name = name
        actionVC.currentSprint = currSprint
        actionVC.startDate = startDate
        self.present(actionVC, animated: true, completion: nil)
        
    }


}







