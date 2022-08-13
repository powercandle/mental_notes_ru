//
//  CartDetail.swift
//  mental_notes_ru
//
//  Created by Артём Рябенко on 14.08.2022.
//

import SwiftUI

struct CartDetail: View {
    var cartCart: TheCart

    var body: some View {
        ScrollView {

            RectangleImage(image: cartCart.image)

            VStack(alignment: .leading) {
                Text(cartCart.name)
                    .font(.title)

                HStack {
                    Text(cartCart.preWords)
                    Spacer()
                  
                }
                .font(.subheadline)
                .foregroundColor(.secondary)

                Divider()


                Text(cartCart.description)
            }
            .padding()
        }
        .navigationTitle(cartCart.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        CartDetail(cartCart: cartss[0])
    }
}
