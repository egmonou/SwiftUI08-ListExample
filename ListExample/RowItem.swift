//
//  RowItem.swift
//  ListExample
//
//  Created by administrator on 05/09/2024.
//

import SwiftUI

struct rowItem: View {
    let persoon: Person
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(persoon.name.capitalized)
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                Text(persoon.hobby!.capitalized)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.orange)
            }
            Spacer()
            if let hoppyimage = persoon.hobbyImage {
                Image(systemName: hoppyimage)
                    .foregroundColor(.red)
            }
        }
        .padding()
        .background(Color.black.cornerRadius(10))
    }
}

#Preview {
    rowItem(persoon: .init(name: "Bert", hobby: "baseball", hobbyImage: "figure.baseball"))
}
