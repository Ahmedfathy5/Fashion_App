//
//  ContentView.swift
//  FashionApp
//
//  Created by Ahmed Fathi on 04/10/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            HStack {
              MainView()
            }// .background(Color("Color"))
            .navigationTitle("Seasons")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image(systemName: "text.justify")
                        .frame(maxWidth: .infinity)
                        .background(.white)
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack {
                        Image(systemName: "magnifyingglass")
                        Image(systemName: "bell")
                        Image(systemName: "bag")
                    }
                    .frame(maxWidth: .infinity)
                    .background(.white)
                }
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

