//
//  MenuView.swift
//  Quote App
//
//  Created by Macbook on 16.06.2022.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack {
                AsyncImage(url: URL(string: "https://picsum.photos/200")) { image in
                      image.resizable()
                        .cornerRadius(50)
                     } placeholder: {
                              ProgressView()
                }
                     .frame(width: 35, height: 35)
                Text("Mohammed Abdullah")
                        .foregroundColor(.gray)
                        .font(.headline)
                        .frame(width: 90)
                        }.padding(.top, 10)

            
            HStack {
                Image(systemName: "bell")
                               .foregroundColor(.gray)
                               .imageScale(.large)
                Text("Notification")
                               .foregroundColor(.gray)
                               .font(.headline)
            }
                .padding(.top, 10)
            
            HStack {
                Image(systemName: "paintpalette")
                               .foregroundColor(.gray)
                               .imageScale(.large)
                           Text("Change Style")
                               .foregroundColor(.gray)
                               .font(.headline)
            }
               .padding(.top, 10)
            HStack {
                Image(systemName: "rectangle.portrait.and.arrow.right")
                               .foregroundColor(.red)
                               .opacity(0.5)
                               .imageScale(.large)
                           Text("Log out")
                               .foregroundColor(.red)
                               .opacity(0.5)
                               .font(.headline)
            }
               .padding(.top, 10)
            
                }
        .padding(.bottom, 500)
        .padding(.trailing, 200)

               .edgesIgnoringSafeArea(.all)


    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
