//
//  TheCart.swift
//  mental_notes_ru
//
//  Created by Артём Рябенко on 14.08.2022.
//

import Foundation
import SwiftUI


struct TheCart: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var preWords: String
    var description: String

    private var imageName: String
    var image: Image {
        Image(imageName)
    }


}

//struct TheCart_Previews: PreviewProvider {
//    static var previews: some View {
//        TheCart(id: <#T##Int#>, name: <#T##String#>, preWords: <#T##String#>, description: <#T##String#>, imageName: <#T##String#>, image: <#T##Image#>)
//    }
//}
