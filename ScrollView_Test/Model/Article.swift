//
//  Article.swift
//  ScrollView_Test
//
//  Created by David Salmberg on 2023-05-18.
//

import Foundation
import UIKit

struct Article : Codable{
    var heading: String
    var content: String
    //var picture: UIImage? // Temporarily commented out to conform to "codable"
    
    
    private var unformattedDate = Date()
    //private let dateFormatter = DateFormatter() // Temporarily commented out to conform to "codable"
    
    init(heading: String, content: String, picture: UIImage? = nil) {
        self.heading = heading
        self.content = content
        //self.picture = picture // Temporarily commented out to conform to "codable"
        let dateFormatter = DateFormatter() // Temporarily moved here to conform to "codable"
        dateFormatter.dateStyle = .medium
    }
    
    var date : String {
        let dateFormatter = DateFormatter() // Temporarily moved here to conform to "codable"
        return dateFormatter.string(from: unformattedDate)
    }
}
