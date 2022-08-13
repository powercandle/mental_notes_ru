//
//  CartList.swift
//  mental_notes_ru
//
//  Created by Артём Рябенко on 14.08.2022.
//

import SwiftUI

struct CartList: View {
    var body: some View {
        NavigationView {
            List(cartss) { cartt in
                NavigationLink {
                    CartDetail(cartCart: cartt)
                } label: {
                    CartRow(cartCart: cartt)
                }
            }
            .navigationTitle("ПсихоКарты")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone XS Max"], id: \.self) { deviceName in
            CartList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
