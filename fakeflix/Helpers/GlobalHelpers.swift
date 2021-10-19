//
//  GlobalHelpers.swift
//  fakeflix
//
//  Created by Imun on 9/27/21.
//

import Foundation
import SwiftUI

// Movie
let exampleMovie1 = Movie(
    id : UUID().uuidString,
    name: "DARK",
    thumbnailURL: URL(string: "https://i.pinimg.com/474x/e6/45/cf/e645cf822b0480662d1f71aa2cb42f72.jpg")!,
    categories: ["Dystopian","Exciting","Suspenseful","Sci-Fi TV"],
    year: 2020,rating: "TV-MA",
    numberOfSeasons: 1,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje  Friese",
    cast: "Louis Hofman, Oliver Masucci, Jordis Triabel")

let exampleMovie2 = Movie(
    id : UUID().uuidString,
    name: "Travelers",
    thumbnailURL: URL(string: "https://picsum.photos/200/300/")!,
    categories: ["Dystopian","Exciting","Suspenseful","Sci-Fi TV"],
    year: 2020,rating: "TV-MA",
    numberOfSeasons: 2,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje  Friese",
    cast: "Louis Hofman, Oliver Masucci, Jordis Triabel",
    promotionHeadline: "Best Rated Show")

let exampleMovie3 = Movie(
    id : UUID().uuidString,
    name: "Comminity",
    thumbnailURL: URL(string: "https://picsum.photos/200/301")!,
    categories: ["Dystopian","Exciting","Suspenseful","Sci-Fi TV"],
    year: 2020,rating: "TV-MA",
    numberOfSeasons: 3,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje  Friese",
    cast: "Louis Hofman, Oliver Masucci, Jordis Triabel")

let exampleMovie4 = Movie(
    id : UUID().uuidString,
    name: "Alone",
    thumbnailURL: URL(string: "https://picsum.photos/200/302/")!,
    categories: ["Dystopian","Exciting","Suspenseful","Sci-Fi TV"],
    year: 2020,rating: "TV-MA",
    numberOfSeasons: 4,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje  Friese",
    cast: "Louis Hofman, Oliver Masucci, Jordis Triabel",
    promotionHeadline: "New episode coming soon")

let exampleMovie5 = Movie(
    id : UUID().uuidString,
    name: "Hanibal", thumbnailURL: URL(string: "https://picsum.photos/200/303")!,
    categories: ["Dystopian","Exciting","Suspenseful","Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 5,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje  Friese",
    cast: "Louis Hofman, Oliver Masucci, Jordis Triabel")

let exampleMovie6 = Movie(
    id : UUID().uuidString,
    name: "After Life",
    thumbnailURL: URL(string: "https://picsum.photos/200/304")!,
    categories: ["Dystopian","Exciting","Suspenseful","Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 6,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje  Friese",
    cast: "Louis Hofman, Oliver Masucci, Jordis Triabel",
    promotionHeadline: "Watch season 6 Now")

let exampleMovies:[Movie] = [exampleMovie1,exampleMovie2,exampleMovie3,exampleMovie4,exampleMovie5,exampleMovie6]

// EpisodeInfo
let exampleEpisodeInfo1 = CurrentEpisodeInfo(episodeName: "Beginings and Endings", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s..", season: 2, episode: 1)

extension LinearGradient{
    static let blackOpacityGradient = LinearGradient(
        gradient:Gradient(colors: [Color.black.opacity(0.0),Color.black.opacity(0.95)]),
        startPoint: .top, endPoint: .bottom
    )
}

extension String{
    func widthOfString(usingFont font:UIFont) -> CGFloat{
        let fontAttributes=[NSAttributedString.Key.font:font]
        let size = self.size(withAttributes:fontAttributes)
        return size.width
    }
}
