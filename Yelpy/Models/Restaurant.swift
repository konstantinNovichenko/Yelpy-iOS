//
//  Restaurant.swift
//  Yelpy
//
//  Created by Maria Ivanova on 10/24/20.
//  Copyright © 2020 memo. All rights reserved.
//

import Foundation

class Restaurant {
    var imageURL: URL?
    
    var name: String
    var mainCategory: String
    var phone: String
    
    var raiting: Double
    var reviews: Int
    
    
    init(dict: [String: Any]){
        imageURL = URL(string: dict["image_url"] as! String)
        name = dict["name"] as! String
        phone = dict["display_phone"] as! String
        raiting = dict["rating"] as! Double
        reviews = dict["review_count"] as! Int
        mainCategory = Restaurant.getMainCategory(dict: dict)
    }
    
    static func getMainCategory(dict: [String: Any]) -> String {
        let categoryArray = dict["categories"] as! [[String:Any]]
        return categoryArray[0]["title"] as! String
    }
}
