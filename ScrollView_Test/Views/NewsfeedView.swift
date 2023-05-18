//
//  NewsfeedView.swift
//  ScrollView_Test
//
//  Created by David Salmberg on 2023-05-18.
//

import SwiftUI

struct NewsFeedView: View {
    @StateObject var viewModel = NewsFeedViewModel()

    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    ForEach(viewModel.articles, id: \.heading) { article in
                        HStack {
                            Text(article.heading)
                                .font(.title)
                                .bold()
                                .padding(.leading, 10)
                            
                            Spacer()
                            
                            Image("Image")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .padding()
                        }
                    }
                }
                .padding(.top, 80)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        // Handle toolbar button action
                    }) {
                        Image(systemName: "gear")
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        // Handle toolbar button action
                    }) {
                        Image(systemName: "person")
                    }
                }
            }
            .navigationTitle("News Feed")
          
        }
        .edgesIgnoringSafeArea(.top)
        .onAppear {
            viewModel.articleMockData()
        }
    }
}

struct NewsFeedView_Previews: PreviewProvider {
    static var previews: some View {
        NewsFeedView()
    }
}
