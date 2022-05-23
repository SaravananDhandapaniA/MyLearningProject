//
//  ViewModel.swift
//  MyLearningProject
//
//  Created by Tringapps on 23/05/22.
//

import Foundation

class ComapanyDataViewModel {
    var apiService = ApiService()
    var companyData = [CompanyData]()
    func fetchCompanyData(completion: @escaping () -> Void ) {
        apiService.getCompanyData { result in
            switch result {
            case .success(let listOfData):
                self.companyData = listOfData
                completion()
            case .failure(let error):
                print("Error in processing jsondata:\(error)")
            }
        }
    }
    func numberOfRowsInSection(section: Int) -> Int {
        return companyData.count - 1
    }
    func cellForRowAt(indexPath: IndexPath) -> CompanyData {
        return companyData[indexPath.row]
    }
    func didSelectRowAt(indexPath: IndexPath) -> CompanyData {
        return companyData[indexPath.row]
    }
}
