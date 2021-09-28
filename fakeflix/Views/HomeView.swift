//
//  HomeView.swift
//  fakeflix
//
//  Created by Imun on 9/27/21.
//

import SwiftUI

struct HomeView: View {
    var vm = HomeVM()
    
    let screen = UIScreen.self.main.bounds
        
    
    var body: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
        
            // main vstack
            ScrollView {
                
                
                TopRowButtons()
                
                TopMoviePreview(movie: exampleMovie5)
                    .frame(width: screen.width)
                .padding(.top, -110)
                .zIndex(-1)
                
                
                LazyVStack {
                    ForEach(vm.allCategories, id: \.self) { category in
                        VStack {
                            HStack {
                                Text(category)
                                    .font(.title3)
                                    .bold()
                                Spacer()
                            }
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                LazyHStack{
                                    ForEach(vm.getMovie(forCat: category)) {
                                        movie in
                                        StandardHomeView(movie: movie)
                                            .frame(width: 100, height: 200)
                                            .padding(.horizontal,20)
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        .foregroundColor(.white)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct TopRowButtons: View {
    var body: some View {
        HStack {
            Button(action: {
                //
            }, label: {
                Image("netflix_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width:50)
            })
                .buttonStyle(PlainButtonStyle())
            
            
            Spacer()
            
            Button(action:{
                
            },label:{
                Text("TV Shows")
            })
                .buttonStyle(PlainButtonStyle())
            
            Spacer()
            
            Button(action:{
                
            },label:{
                Text("Movies")
            })
                .buttonStyle(PlainButtonStyle())
            
            Spacer()
            
            Button(action:{
            },label:{
                Text("My List")
            })
                .buttonStyle(PlainButtonStyle())
        }
        .padding(.leading,10)
        .padding(.trailing,30)
    }
}
