//
//  CustomTabSwitcher.swift
//  fakeflix
//
//  Created by Imun on 10/19/21.
//

import SwiftUI

struct CustomTabSwitcher: View {
    
    var tabs:[CustomTab]
    
    func widthForTab(_ tab:CustomTab)-> CGFloat{
        let string=tab.rawValue
        return string.widthOfString(usingFont: .systemFont(ofSize: 16,weight: .bold))
    }
    
    var body: some View {
        VStack{
            //scrollable picker
            ScrollView(.horizontal,showsIndicators: false){
                HStack{
                    ForEach(tabs, id:\.self) {tab in
                        VStack{
                            //Red Bar
                            Rectangle()
                                .frame(width:widthForTab(tab),height:6)
                            
                            
                            //Button
                            Button(action:{
                                //
                            },label:{
                                Text(tab.rawValue).font(.system(size:16,weight:.bold))
                            })
                                .buttonStyle(PlainButtonStyle())
                        }
                        
                    }
                }
            }
            Text("Selected View")
        }
        .foregroundColor(.white)
    }
}
            
enum CustomTab: String{
    case episode = "EPISODES"
    case trailers = "TRAILERS & MORE"
    case more = "MORE LIKE THIS"
}

struct CustomTabSwitcher_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color.black.edgesIgnoringSafeArea(.all)
            
            CustomTabSwitcher(tabs: [.episode,.trailers,.more])
        }
    }
}


