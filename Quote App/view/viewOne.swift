 //
//  mainView.swift
//  Quote App
//
//  Created by Macbook on 16.06.2022.
//

import SwiftUI


struct viewOne: View {
    
//    @StateObject var viewModel = FetchViewModel()
      @State private var isShowingMenu = false
      @State private var isHidingMenu = true
    
      @State private var showMenu = false
    
    var body: some View {
        GeometryReader { geometry in
        ZStack(alignment: .leading) {
            quoteView(showMenu: self.$showMenu)
                  .frame(width: geometry.size.width, height: geometry.size.height)
                  .offset(x: self.showMenu ? geometry.size.width/2 : 0)
//                  .disabled(self.showMenu ? true : false)
                         if self.showMenu {
                  MenuView()
                    .frame(width: geometry.size.width, height: geometry.size.height)

                         }

        }
        }    }
}

struct mainView_Previews: PreviewProvider {
    static var previews: some View {
        viewOne()
    }
}
