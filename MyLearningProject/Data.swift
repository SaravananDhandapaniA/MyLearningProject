//
//  Data.swift
//  MyLearningProject
//
//  Created by Tringapps on 11/05/22.
//

import Foundation

struct companyData : Decodable{
    
    private enum CodingKeys: String , CodingKey{
        case id
        case name
        case currentSprint
        case startDate
        case endDate
        case issues
        case backlogs
        }
    
    
    let id : Int?
    let name : String?
    let currentSprint : String?
    let startDate :  String?
    let endDate : String?
    let issues : Int?
    let backlogs : Int?
}

//struct CompanyData : Decodable{
//
//    private enum CodingKeys: String , CodingKey{
//        case companyData
//    }
//
//    let companyData : [Data]
//}
//
//
//struct Data : Decodable{
//
//    private enum CodingKeys: String , CodingKey{
//        case id
//        case name
//        case currentSprint
//        case startDate
//        case endDate
//        case issues
//        case backlogs
//    }
//
//    let id : Int?
//    let name : String?
//    let currentSprint : String?
//    let startDate :  String?
//    let endDate : String?
//    let issues : Int?
//    let backlogs : Int?
//}

