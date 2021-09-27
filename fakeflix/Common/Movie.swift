//
//  Movie.swift
//  fakeflix
//
//  Created by Imun on 9/27/21.
//

import Foundation


struct Movie: Identifiable{
    var id : String = UUID().uuidString
    var name : String
    var thumbnailURL : URL
    
    var categories: [String]
    
    
}
