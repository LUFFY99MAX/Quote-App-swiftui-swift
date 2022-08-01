//
//  viewTwo.swift
//  Quote App
//
//  Created by Macbook on 19.06.2022.
//

import SwiftUI

struct viewTwo: View {
    @StateObject var viewModel = FetchViewModel()
    var body: some View {
               
        GeometryReader { geo in
//        VStack {
            ZStack(alignment: .center) {
              Color("Fourth")
//                Color.green
                Spacer()
            }
            .ignoresSafeArea()
                GeometryReader { geometry in
                    VStack( alignment: .leading, spacing: 20) {
                            ScrollView {
                                 Text(viewModel.quoteData?.en ?? "Do not wish to be like anyone except in two cases. The first is a person, whom Allah has given wealth & he spends it righteously;")
                            }
                                        .font(.largeTitle)
                                        .foregroundColor(Color("secondary"))
                                       .padding(20)
                                       .lineLimit(10)
                            Text(viewModel.quoteData?.author ?? "-Prophet Muhammad")
                                        .font(.headline)
                                        .foregroundColor(.black)
                                    .background(.purple)
                        

                                
                                Button {
                                    viewModel.fetchQuote()

                                    
                                } label: {
                                    Image(systemName: "arrow.forward.square")
                                        .font(.largeTitle)
                                        .foregroundColor(.black)
                                }
                                .padding()

                            }
                        .ignoresSafeArea()
                        .frame(width: geometry.size.width * 0.9)
                        .padding()

                }
                .ignoresSafeArea()
                .padding()
            Spacer()
            Button {
                
            } label: {
                Image(systemName: "gear")
                    .font(.largeTitle)
                    .opacity(0.7)
                    .foregroundColor(Color("secondary"))
            }
            .padding(3)
 }
        }

        }
            
struct viewTwo_Previews: PreviewProvider {
    static var previews: some View {
        Group {

        viewTwo()
            .previewDevice(PreviewDevice(rawValue: "iPhone 8"))
            .previewDisplayName("iPhone SE")
        
        viewTwo()
            .previewDevice(PreviewDevice(rawValue: "iPhone 11 Pro Max"))
            .previewDisplayName("iPhone 11 Pro Max")
        }
    }
}  
