//
//  CartRow.swift
//  mental_notes_ru
//
//  Created by Артём Рябенко on 14.08.2022.
//

import SwiftUI

struct CartRow: View {
    var cartCart: TheCart

    var body: some View {
        HStack {
            cartCart.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(cartCart.name)

            Spacer()
        }
    }
}

struct CartRow_Previews: PreviewProvider {
    static var previews: some View {
        CartRow(cartCart: cartss[1])
    }
}
