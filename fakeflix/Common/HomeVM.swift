//
//  HomeVM.swift
//  fakeflix
//
//  Created by Imun on 9/27/21.
//

import Foundation


class HomeVM :ObservableObject{
     
    //String = category
    @Published var movies: [String :[Movie]] = [:]
    
    public var allCategories : [String]{
        return movies.keys.map({String($0)})
    }
    
    public func getMovie(forCat cat:String)-> [Movie] {
        return movies[cat] ?? []
    }
    
    init(){
        setupMovies()
    }
    
    func setupMovies(){
        movies["Tranding Now"] = exampleMovies
        movies["Stand-Up Commedy"] = exampleMovies.shuffled()
    }
}
