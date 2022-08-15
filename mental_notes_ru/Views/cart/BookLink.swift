//
//  BookLink.swift
//  mental_notes_ru
//
//  Created by Артём Рябенко on 15.08.2022.
//

import SwiftUI

struct BookLink: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Group{
//                    Text("Источники")
//                        .font(.title2)
//                        .fontWeight(.medium)
                    Text("Ниже представлены различные сайты, презентации, люди и другие источники информации, содержащие отличные идеи, которые мы можем применить в веб-дизайне.")
                        .font(.footnote)
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                        .padding()
                    Divider()
                    Divider()
                }.padding(.horizontal, 16)
                Group{
                    Link("Теория веселья", destination: URL(string: "http://thefuntheory.com/")!)
                        .font(.title3)
                    Text("Серия видеороликов о том, как простое развлечение может изменить поведение в лучшую сторону.")
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                       
                    Divider()
                    Link("Создание систем репутации", destination: URL(string: "http://www.buildingreputation.com/")!)
                        .font(.title3)
                        
                        
                    Text("Серия видеороликов о том, как простое развлечение может изменить поведение в лучшую сторону.")
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                    Divider()
                    Link("Блог MindHacks", destination: URL(string: "http://www.mindhacks.com/")!)
                        .font(.title3)
                        
                    Text("Сайт, сопровождающий книгу MindHacks, в которой рассматриваются 100 интересных наблюдений о том, как работает наш мозг.")
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                    Divider()
                    Link("Джей Фогг", destination: URL(string: "http://bjfogg.com/")!)
                        .font(.title3)
                }.padding(.horizontal, 16)
                Group{
                    Text("Джей Фогг уже много лет пишет и исследует технологии убеждения! Несколько отличных идей и схем, подкрепленных серьезными исследованиями.")
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                
                    Divider()
                    Link("PsyBlog", destination: URL(string: "http://www.spring.org.uk/%20PsyBlog")!)
                        .font(.title3)
                    Text("Будьте в курсе многих интересных исследований в области психологии.                                                           ")
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                    Divider()
                    Link("Социальный мозг", destination: URL(string: "http://socialbrain.rsablogs.org.uk/")!)
                        .font(.title3)
                    Text("Рассматривает исследования, проводимые на трех уровнях: мозг, индивидуальное поведение и социальная организация.")
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                    Divider()
                    Link("Дизайн и поведение", destination: URL(string: "http://designandbehaviour.rsablogs.org.uk/")!)
                        .font(.title3)
                    Text("О том как дизайн и технологии могут влиять на поведение людей.")
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                }.padding(.horizontal, 16)
                Group{
                    
                    Divider()
                    Link("Что заставляет нажимать?", destination: URL(string: "http://www.whatmakesthemclick.net/")!)
                        .font(.title3)
                    Text("Регулярные идеи из нейронауки, применяемые в веб-дизайне.                                                  ")
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                    Divider()
                    Link("Стимулирующий интеллект", destination: URL(string: "http://www.i2i-align.com/")!)
                        .font(.title3)
                    
                    Text("Все о стимулах и вознаграждениях.                       ")
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                    
                    
                    
                        
                }.padding(.horizontal, 16)
                Group{
                    
                   
                    Text("Регулярные идеи из нейронауки, применяемые в веб-дизайне.")
                        .font(.title2)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.leading)
                   }.padding(.horizontal, 16)
            }
        }
        .navigationTitle("Источники")
    }
        
}


struct BookLink_Previews: PreviewProvider {
    static var previews: some View {
        BookLink()
    }
}
