//
//  ContentView.swift
//  Quote App
//
//  Created by Macbook on 15.06.2022.
//

import SwiftUI

struct quoteView: View {
    
        @StateObject var viewModel = FetchViewModel()
        @State private var quoteData: quoteX?
        @Binding var showMenu: Bool
    
    var first = ".bottom, 720"
    var second = ".bottom, 70"

    
    
//      @State private var showMenu = false

    var body: some View {

        NavigationView {
            ZStack {
                Color("primary")
                ZStack {
                    
                    Button {

                         self.showMenu = false
                        print("false button")

                    } label: {
                        Image(systemName: "multiply")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .opacity(showMenu ? 0.7:0)
                    }
                    .padding(.bottom , showMenu ? 600 : 500)
                    .padding(.trailing, 320)
                                  
                    VStack( alignment: .leading, spacing: 20) {
                        
                        //Fetch Quote Text
                        Text(viewModel.quoteData?.en ??  "Loading...")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                        
                        
                        //Fetch Quote Author
                        Text(viewModel.quoteData?.author ??  "Waiting...")
                            .font(.headline)
                            .foregroundColor(.white)
                        Button {
                            viewModel.fetchQuote()
                            
                            } label: {
                              Image(systemName: "arrow.forward.square")
                                .font(.largeTitle)
                                .foregroundColor(.blue)
                        }
                        .padding(.leading, 160)

                    }
                    .padding()
                }

            }
            .ignoresSafeArea()
            .onAppear(perform: viewModel.fetchQuote)
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    
                    Menu {
                Button(action: {}) {
                    Label("Create a file", systemImage: "doc")
                }

                Button(action: {}) {
                    Label("Create a folder", systemImage: "folder")
                }
            }
            label: {
                Label("Add", systemImage: "gear")
            }

                  
                    
//                                    Button {
//
//                                         self.showMenu = true
//
//                                    } label: {
//                                        Image(systemName: "gear")
//                                            .font(.largeTitle)
//                                            .foregroundColor(.white)
//                                            .opacity(showMenu ? 0:0.7)
//                                    }
                    
                }
              
        }
          
        }
       
    }
    
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        quoteView(showMenu: .constant(false))
                   .previewDevice(PreviewDevice(rawValue: "iPhone 12"))
                   .previewDisplayName("iPhone 12")

        quoteView(showMenu: .constant(false))
                   .previewDevice(PreviewDevice(rawValue: "iPhone 8"))
                   .previewDisplayName("Your iPhone")


    }
}




