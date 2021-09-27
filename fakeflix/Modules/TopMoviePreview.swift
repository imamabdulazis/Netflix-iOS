//
//  TopMoviePreview.swift
//  fakeflix
//
//  Created by Imun on 9/27/21.
//

import SwiftUI
import Kingfisher

struct TopMoviePreview: View {
    var movie: Movie
    
    
    func isLastCategory(_ cat:String)-> Bool{
        let catCount = movie.categories.count // 4
        // if 0 + 1 != 4
        if let index = movie.categories.firstIndex(of: cat){
            if index+1 != catCount{
                return false
            }
        }
        
        return true
    }
    
    var body: some View {
        ZStack{
            KFImage(movie.thumbnailURL)
                .resizable()
                .scaledToFill()
                .clipped()
            
            VStack {
                Spacer()
                
                HStack{
                    ForEach(movie.categories, id: \.self) {category in
                        
                        HStack{
                            Text(category)
                            
                            if !isLastCategory(category){
                                Image(systemName: "circle.fill")
                                    .foregroundColor(.blue)
                                    .font(.system(size:3))
                            }
                           
                        }
                    }
                }
                Text("Row of Buttons")
            }
        }
        .foregroundColor(.white)
    }
}

struct TopMoviePreview_Previews: PreviewProvider {
    static var previews: some View {
        TopMoviePreview(movie: exampleMovie1)
    }
}
