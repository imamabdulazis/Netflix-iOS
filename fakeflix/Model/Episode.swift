//
//  Episode.swift
//  fakeflix
//
//  Created by Imun on 9/27/21.
//

import Foundation


struct Episode: Identifiable{
    var id = UUID().uuidString
    
    var name: String
    var season: Int
    var thumbnailImageURLString: String
    var description: String
    var length: Int
    
    var thumbailURL: URL {
        return URL(string: thumbnailImageURLString)!
    }
}
