//
//  quoteViewModel.swift
//  Quote App
//
//  Created by Macbook on 15.06.2022.
//

import Foundation

class FetchViewModel: ObservableObject {
    
    @Published var quoteData: quoteX?

    func fetchQuote() {
        guard let url = URL(string:"https://programming-quotes-api.herokuapp.com/quotes/random") else { return }
        URLSession.shared.dataTask(with: url) { data, response, error in
        guard let data = data else { return }
        if let decodedData = try? JSONDecoder().decode(quoteX.self, from: data) {
        DispatchQueue.main.async {
        self.quoteData = decodedData
        
          }
            }
        }
        .resume()
    }
}
