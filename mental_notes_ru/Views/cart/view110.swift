//
//  view110.swift
//  mental_notes_ru
//
//  Created by Артём Рябенко on 13.08.2022.
//

import SwiftUI

struct ContentView2: View {
    @State private var showingSheet = false
    @State private var showingSheet2 = false
    var body: some View {
        VStack {
            Button("particular") {
                showingSheet.toggle()
            }
            .sheet(isPresented: $showingSheet) {
                SheetView()
        }
            Rectangle().frame(width: 40, height: 40)
            
            Button("particular2") {
                showingSheet2.toggle()
            }
            .sheet(isPresented: $showingSheet2) {
                SheetView2()
        }
        }
    }
}

struct SheetView: View {
   
    @Environment(\.presentationMode) var presentationMode
   
    var body: some View {
        
        VStack {
            Button("Press to dismiss") {
                presentationMode.wrappedValue.dismiss()
            }
            .font(.title)
            .padding()
        .background(.black)
            Text("true")
        }
    }
}

struct SheetView2: View {
   
    @Environment(\.presentationMode) var presentationMode
   
    var body: some View {
        
        VStack {
            HStack {
                VStack {
                    Button("Press to dismiss") {
                        presentationMode.wrappedValue.dismiss()
                    }
                    .font(.title2)
                    .padding()
                .background(.teal)
                    Text("also true")
                }
                Spacer()
            }
            Spacer()
        }
    }
}


struct view110_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2()
    }
}
