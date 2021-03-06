//
//  ApiService.swift
//  MyLearningProject
//
//  Created by Tringapps on 23/05/22.
//

import Foundation

class ApiService {

func getCompanyData(completion : @escaping (Result<[CompanyData], Error>) -> Void) {

    let urlString = "http://th-alb-1338985061.ap-south-1.elb.amazonaws.com/api/v1/projects/sprints"

    guard let url = URL(string: urlString) else {return}

    URLSession.shared.dataTask(with: url) { data, response, error in
        if let error = error {
            print(error)
            return
        }
        if let response = response {
            print(response)
        }
        guard let data = data else {
            return
        }
        do {
           let jsonData = try JSONDecoder().decode([CompanyData].self, from: data)
            completion(.success(jsonData))
        } catch let error {
            completion(.failure(error))
        }

    }.resume()
}
}
