//
//  SmallVerticalButton.swift
//  fakeflix
//
//  Created by Imun on 9/27/21.
//

import SwiftUI

struct SmallVerticalButton: View {
    var text: String
    
    var isOneImage: String
    var isOffImage: String
    
    var isOn: Bool
    
    var imageName: String{
        if isOn{
            return isOneImage
        }else{
            return isOffImage
        }
    }
    
    var action: () -> Void
    
    var body: some View {
        Button(action: {
            action()
        }, label: {
            VStack{
                Image(systemName: isOneImage)
                    .foregroundColor(.white)
                
                Text(text)
                    .foregroundColor(.white)
                    .font(.system(size:14))
                    .bold()
            }
        })
    }
}

struct SmallVerticalButton_Previews: PreviewProvider {
    static var previews: some View {
        
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            SmallVerticalButton(text: "My List",
                                isOneImage: "checkmark",
                                isOffImage: "plus",
                                isOn: false){
                print("Tapped")
            }
        }
    }
}
