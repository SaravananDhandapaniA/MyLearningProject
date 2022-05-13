//
//  ViewController.swift
//  MyLearningProject
//
//  Created by Tringapps on 11/05/22.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource ,CollectionTappedDelegate{
    
 
    

    @IBOutlet weak var tableView: UITableView!

  var data = [companyData]()
    
    var imageNames = ["Viswasam","Remo"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = 150

        parse()

    }


    func parse(){

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
               let jsonData = try JSONDecoder().decode([companyData].self, from: data)
                self.data = jsonData
                print("name : \(jsonData)")
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
             let cell = tableView.dequeueReusableCell(withIdentifier: Constant.firstCellIdentifier , for: indexPath) as? tableCell1

            cell?.config(data[indexPath.row].name!, data[indexPath.row].currentSprint!)
//            cell?.name.text = data[indexPath.row].name
//            cell?.currentSprint.text = data[indexPath.row].currentSprint
            cell?.img.image = UIImage(named: imageNames[indexPath.row])
            cell?.circleImage().self
            return cell!
        }
        else if indexPath.row == 1{
            let cell = tableView.dequeueReusableCell(withIdentifier: Constant.secondCellIdentifier, for: indexPath) as? tableCell2
            cell?.config(data[indexPath.row].name!, data[indexPath.row].currentSprint!)
//            cell?.name2.text = data[indexPath.row].name
//            cell?.currentSprint2.text = data[indexPath.row].currentSprint
            cell?.img2.image = UIImage(named: imageNames[indexPath.row])
            cell?.circleImage().self
           return cell!
        }
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: Constant.thirdCellIdentifier, for: indexPath) as? tableCell3
            cell?.delegate = self
           return cell!
        }
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        guard let vc = storyboard?.instantiateViewController(withIdentifier: Constant.secondViewControllerIdentifier) as? SecondViewController else{
            return
        }
        
        vc.image = UIImage(named: imageNames[indexPath.row])!
        vc.name = data[indexPath.row].name!
        vc.currentSprint = data[indexPath.row].currentSprint!
        vc.startDate = data[indexPath.row].startDate!
        self.present(vc, animated: true, completion: nil)
    }
    
    func collectionImageTapped(_ image: String ) {
        
        guard let vc = storyboard?.instantiateViewController(withIdentifier: Constant.secondViewControllerIdentifier) as? SecondViewController else{return}
        vc.image = UIImage(named: image)!
        self.present(vc, animated: true, completion: nil)
        
    }

}






