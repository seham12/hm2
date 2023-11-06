//
//  Message History .swift
//  SehamLab
//
//  Created by Seham almarshedi on 20/04/1445 AH.
//

import SwiftUI
struct MessageInfo: Identifiable{
    let id = UUID()
    let Imag: String
    let title: String
    let subTitle: String
    let image: String
    let imageColor: Color
    let time: String
}
struct MessageHistory: View {
    let MessageArray: Array<MessageInfo> = [MessageInfo(Imag: "Image", title: "Dr.Marcus Horzone", subTitle: "I don,t have any fever, but headchace...", image: "1.circle.fill", imageColor: .color, time: "10:24"),MessageInfo(Imag: "Image 3", title: "Dr.Alysa Hana", subTitle: "How can i help you?", image: "checkmark", imageColor: .gray, time: "10:24"),MessageInfo(Imag: "Image 1", title: "Dr.Maria Elena", subTitle: "Do you have fever?", image: "checkmark", imageColor: .gray, time: "8:57"),]
   
    var body: some View {
        VStack{
            
            Text("Message")
                .font(
                    Font.custom("Inter", size: 24)
                        .weight(.semibold)
                )
                .foregroundColor(Color(red: 0.06, green: 0.09, blue: 0.14))
            
            Image("serch")
            
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 335, height: 46)
                .background(Color(red: 0.91, green: 0.95, blue: 0.95))
                .cornerRadius(8)
                .overlay(
                        
                    HStack{
                        
                      Text("All        ")
                          .bold()
                          .foregroundColor(.white)
                          .background(.color)
                          
                        Text("       Group         Private")
                        
                    })

            // ZStack{ VStack(spacing: 20) {
            ForEach(MessageArray) { data in
                MessageFun(mesg: data)
            }
        }.padding()
    Spacer()
}
}


func MessageFun(mesg: MessageInfo)-> some View{
    HStack{
        Image(mesg.Imag)
            .resizable()
            .frame(width: 80,height: 80)
            .clipShape(Circle())
        VStack(alignment: .leading){
            Text(mesg.title)
                .font(.title3)
                .bold()
            Text(mesg.subTitle)
                .foregroundColor(.gray)
            
        }
        Spacer()
        VStack(alignment: .trailing){
            Text(mesg.time)
                .foregroundColor(.gray)
            Image(systemName:mesg.image)
                .foregroundColor(mesg.imageColor)
        }
    }.padding(.horizontal)
}


            
                            
                      
#Preview {
    MessageHistory()
}
