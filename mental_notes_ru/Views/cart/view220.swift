//
//  view220.swift
//  mental_notes_ru
//
//  Created by Артём Рябенко on 15.08.2022.
//

import SwiftUI

struct view220: View {
    var body: some View {
        NavigationView{
        NavigationLink(destination: CartStart()) {
            Image("cartLogo")
                .resizable()
                .frame(width: 100, height: 100)
               // .renderingMode(.original)
        }
        .navigationTitle("Navigation")
    }
}
}
struct view220_Previews: PreviewProvider {
    static var previews: some View {
        view220()
    }
}
