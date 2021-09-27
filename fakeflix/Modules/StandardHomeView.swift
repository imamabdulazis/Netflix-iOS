//
//  StandardHomeView.swift
//  fakeflix
//
//  Created by Imun on 9/27/21.
//

import SwiftUI
import Kingfisher

struct StandardHomeView: View {
    var movie: Movie
    
    var body: some View {
        KFImage(movie.thumbnailURL)
            .resizable()
            .scaledToFill()
    }
}

struct StandardHomeView_Previews: PreviewProvider {
    static var previews: some View {
        StandardHomeView(movie: exampleMovie1)
    }
}
