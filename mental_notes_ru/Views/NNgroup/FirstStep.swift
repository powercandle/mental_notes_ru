//
//  FirstStep.swift
//  mental_notes_ru
//
//  Created by Артём Рябенко on 15.08.2022.
//

import SwiftUI

struct FirstStep: View {
    @State private var randomInt = 0
    @State var randomColor: Color = .random
    @State var firstOpen = 100
    var item: Item
    var body: some View {
        VStack {
            Text("Выберите свой вариант и найдите решение")
                .font(.title2)
                .fontWeight(.medium)
                .padding(.top, 10)
            
            Text("*карточки генерируются случайным образом")
                .font(.footnote)
                .padding(.bottom, 10)
            HStack(alignment: .top){
                VStack{
                    Button {
                        randomInt = Int.random(in: 0..<5)
                        randomColor = .random
                        firstOpen = 5
                    } label: {
                        Text("Этап 1: Создание")
                            .frame(width: UIScreen.main.bounds.width*0.25)
                    }
                }
                
                VStack{
                    Button {
                        randomInt = Int.random(in: 5..<10)
                        randomColor = .random
                        firstOpen = 5
                    } label: {
                        Text("Этап 2: Реализация")
                            .frame(width: UIScreen.main.bounds.width*0.30)
                    }
                }
                
                VStack{
                    Button {
                        randomInt = Int.random(in: 10..<16)
                        randomColor = .random
                        firstOpen = 5
                    } label: {
                        Text("Этап 3: Оценка")
                            .frame(width: UIScreen.main.bounds.width*0.25)
                    }
                }
            }
            
            
            Divider()
            
            
            
            Button {
                randomInt = Int.random(in: 0..<17)
                randomColor = .random
                firstOpen = 5
            } label: {
                Text("Мне повезёт!")
            }
            Divider()
            
            
            Spacer()
            
            ZStack{
                RoundedRectangle(cornerRadius: 20)
                    .fill(randomColor.opacity(0.2))
                    .frame(width: UIScreen.main.bounds.width*0.9, height: UIScreen.main.bounds.width*1.5)
                
                
                Carta(item: items[randomInt], firstOpen: $firstOpen, randomInt: $randomInt)
                    .padding()
                
                
            }
        }
        .navigationTitle("На каком Вы этапе?")
    }
}


struct FirstStep_Previews: PreviewProvider {
    static var previews: some View {
        FirstStep(item: Item(title: "11", target: "22", type: "33", method: "44", mean: "55"))
    }
}

struct Carta: View {
    var item: Item
    let randomColor: Color = .random
    @Binding var firstOpen: Int
    @Binding var randomInt: Int
    var body: some View {
       
        ScrollView {
            
            
            
            VStack(alignment: .leading, spacing: 5){
                Text("Этап:  \(item.title)")
                    .font(.title3)
                
                Divider()
                Text("Цель:  \(item.target)")
                Divider()
                Text("Вид:  \(item.type)")
                Divider()
                Text("Метод:  \(item.method)")
                Divider()
                Text("Суть:  \(item.mean)")
                
                
            }.frame(width: UIScreen.main.bounds.width*0.85)
            
            
        }
    }
}

extension Color {
    static var random: Color {
        return Color(red: .random(in: 0...1),
                     green: .random(in: 0...1),
                     blue: .random(in: 0...1))
    }
}
