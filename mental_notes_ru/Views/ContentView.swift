//
//  ContentView.swift
//  mental_notes_ru
//
//  Created by Alex Radaikin on 13.08.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView{
        VStack(spacing: 40) {
            Divider()
            HStack(spacing:40) {
                NavigationLink(destination: FirstStep(item: Item(title: "ff", target: "ff", type: "ff", method: "ff", mean: "ff"))) {
                    Image(systemName: "menucard")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .foregroundColor(.green)
                    Text("NN20")
                }
                
                NavigationLink(destination: CartStart()) {
                    Image(systemName: "menucard")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .foregroundColor(.black)
                    Text("Карточки")
                }
                
            }
            Divider()
            HStack (spacing:40) {
                Text("cc")
                Text("dd")
            }
            Divider()
        }
        .navigationTitle("UX menu😍")
        .navigationBarTitleDisplayMode(.inline)
    
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}//CartList()
