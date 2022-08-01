//
//  prototype2.swift
//  Quote App
//
//  Created by Macbook on 17.06.2022.
//

import SwiftUI

struct prototype2: View {
    
    @State var showMenu = false
        
    var body: some View {
        
        let drag = DragGesture()
                    .onEnded {
                        if $0.translation.width < -100 {
                            withAnimation {
                                self.showMenu = false
                            }
                        }
                    }

         
      return  GeometryReader { geometry in
          ZStack {
            buttonView(showMenu: self.$showMenu)
                .frame(width: geometry.size.width, height: geometry.size.height)
                .background(Color("fourth"))
                .offset(x: self.showMenu ? geometry.size.width/2 : 0)
                .disabled(self.showMenu ? true : false)
        if self.showMenu {
                        MenuView()
                        .frame(width: geometry.size.width/2)

                            }

          }                  .gesture(drag)


        }
    }
}

struct prototype2_Previews: PreviewProvider {
    static var previews: some View {
        prototype2()
    }
}

struct buttonView: View {
    
    @Binding var showMenu: Bool
    
    var body: some View {
        Button(action: {
            
            print("Open the side menu")
            self.showMenu = true

        }) {
            Text("Show Menu")
        }
    }
}
