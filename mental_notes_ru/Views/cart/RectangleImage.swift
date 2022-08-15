//
//  RectangleImage.swift
//  mental_notes_ru
//
//  Created by Артём Рябенко on 14.08.2022.
//

import SwiftUI

struct RectangleImage: View {
    var image: Image

    var body: some View {
        image
            .resizable()
            .frame(width: UIScreen.main.bounds.width - 100, height: 150)
            .clipShape(RoundedRectangle(cornerRadius: 20))

            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        RectangleImage(image: Image("f001"))
    }
}
