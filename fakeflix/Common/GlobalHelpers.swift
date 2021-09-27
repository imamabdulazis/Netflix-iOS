//
//  GlobalHelpers.swift
//  fakeflix
//
//  Created by Imun on 9/27/21.
//

import Foundation


let exampleMovie1 = Movie(id : UUID().uuidString, name: "DARK", thumbnailURL: URL(string: "https://picsum.photos/200/300")!, categories: ["Dystopian","Exciting","Suspenseful","Sci-Fi TV"])
let exampleMovie2 = Movie(id : UUID().uuidString, name: "Travelers", thumbnailURL: URL(string: "https://picsum.photos/200/300/")!, categories: ["Dystopian","Exciting","Suspenseful","Sci-Fi TV"])
let exampleMovie3 = Movie(id : UUID().uuidString, name: "Comminity", thumbnailURL: URL(string: "https://picsum.photos/200/301")!, categories: ["Dystopian","Exciting","Suspenseful","Sci-Fi TV"])
let exampleMovie4 = Movie(id : UUID().uuidString, name: "Alone", thumbnailURL: URL(string: "https://picsum.photos/200/302/")!, categories: ["Dystopian","Exciting","Suspenseful","Sci-Fi TV"])
let exampleMovie5 = Movie(id : UUID().uuidString, name: "Hanibal", thumbnailURL: URL(string: "https://picsum.photos/200/303")!, categories: ["Dystopian","Exciting","Suspenseful","Sci-Fi TV"])
let exampleMovie6 = Movie(id : UUID().uuidString, name: "After Life", thumbnailURL: URL(string: "https://picsum.photos/200/304")!, categories: ["Dystopian","Exciting","Suspenseful","Sci-Fi TV"])

let exampleMovies:[Movie] = [exampleMovie1,exampleMovie2,exampleMovie3,exampleMovie4,exampleMovie5,exampleMovie6]

