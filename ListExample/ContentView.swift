//
//  ContentView.swift
//  ListExample
//
//  Created by administrator on 04/09/2024.
//

import SwiftUI

struct ContentView: View {
    let people: [Person] = [
        .init(name: "Bert", hobby: "baseball", hobbyImage: "figure.baseball"),
        .init(name: "ernie", hobby: "skyDive", hobbyImage: nil),
        .init(name: "Big Bird", hobby: "Swimming", hobbyImage: "figure.cricket"),
        .init(name: "Cookie", hobby: "SkateBoard", hobbyImage: nil),
    ]
    
    var body: some View {
        List {
            ForEach(people) { person in
                rowItem(persoon: person)
                 .listRowSeparator(.hidden)
            }
        }
    }
}



struct Person: Identifiable {
    var id = UUID()
    let name: String
    let hobby: String?
    let hobbyImage: String?
    
}


#Preview {
    ContentView()
}
