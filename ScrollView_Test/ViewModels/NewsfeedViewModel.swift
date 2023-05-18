//
//  NewsfeedViewModel.swift
//  ScrollView_Test
//
//  Created by David Salmberg on 2023-05-18.
//

import Foundation


class NewsFeedViewModel : ObservableObject {
    @Published var heading = ""
    @Published var content = ""
    @Published var articles: [Article] = []  //En tom lista som håller artiklarna
    
    
    func articleMockData() {
            let article1 = Article(heading: "Article 1", content: "This is the content of article 1.")
            let article2 = Article(heading: "Article 2", content: "This is the content of article 2.")
            let article3 = Article(heading: "Article 3", content: "This is the content of article 3.")

            articles = [article1, article2, article3]
        }
   
    
    
}


