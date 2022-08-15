//
//  CartList.swift
//  mental_notes_ru
//
//  Created by Артём Рябенко on 14.08.2022.
//

import SwiftUI

struct CartList: View {
    var body: some View {
       // NavigationView {
        VStack {
            List(cartss) { cartt in
                    NavigationLink {
                        CartDetail(cartCart: cartt)
                    } label: {
                        CartRow(cartCart: cartt)
                    }
                    //.navigationBarTitleDisplayMode(.inline)
            }
        }
            
         .navigationTitle("ПсихоКарты")
         .navigationBarTitleDisplayMode(.inline)
      //  }
           //
    }
}

struct CartList_Previews: PreviewProvider {
    static var previews: some View {
        
            CartList()
               
        }
    }
