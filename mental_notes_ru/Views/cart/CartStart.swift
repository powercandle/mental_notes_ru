//
//  CartStart.swift
//  mental_notes_ru
//
//  Created by Артём Рябенко on 15.08.2022.
//

import SwiftUI

struct CartStart: View {
   
    var body: some View {
       
        VStack {
            Text("Карты Юзабилити")
                .font(.title2)
                .fontWeight(.medium)
            Text("В разгар напряженной работы над проектом очень легко забыть о нюансах, которые отличают отличные продукты. Здесь собрано 50 идей из области психологии в виде удобного справочника и инструмента для мозгового штурма. Каждая карточка описывает одно понимание человеческого поведения и предлагает способы его применения при разработке веб-сайтов, веб-приложений и программного обеспечения.")
                .padding(.horizontal, 16)
                .padding(.top, 1)
                .font(.body)
            HStack(alignment: .top, spacing: 50){
                
                    NavigationLink(destination: CartList()) {
                        VStack{
                        Image(systemName: "books.vertical")
                            .resizable()
                            .frame(width: 80, height: 80)
                            .foregroundColor(.red)
                            Text("Перейти к карточкам")
                                .fontWeight(.medium)
                                .foregroundColor(.black)
                                .frame(width: 100)
                    }
                }

                NavigationLink(destination: BookLink()) {
                    VStack{
                        Image(systemName: "books.vertical.fill")
                            .resizable()
                            .frame(width: 80, height: 80)
                            .foregroundColor(.blue)
                        Text("Источники")
                            .fontWeight(.medium)
                            .foregroundColor(.black)
                }
            }
            }.padding()
        }
      
    }
}

struct CartStart_Previews: PreviewProvider {
    static var previews: some View {
        CartStart()
    }
}
