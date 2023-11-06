//
//  ChatwithDoctor .swift
//  SehamLab
//
//

import SwiftUI

struct ChatwithDoctor_: View {
    var body: some View {
        NavigationStack{
            HStack{
                Image(systemName: "lessthan"  )                          .foregroundColor(.black)
                
                Text("Dr.Marcus Horizone")
                    .bold()
                    .padding(.horizontal)
                Spacer()
                Image(systemName: "video.fill")
                    .padding(.horizontal,5)
                Image(systemName: "phone.fill")
                    .padding(.horizontal,5)
                Image("three")
                //.foregroundColor(.black)
                    .background(.black)
                    .padding(.horizontal,5)
                
                
            }.padding()
            VStack{
                ZStack{
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 334, height: 75)
                        .background(.white)
                    
                        .cornerRadius(11.13208)
                        .overlay(
                            RoundedRectangle(cornerRadius: 11.13208)
                                .inset(by: 0.5)
                                .stroke(Color(red: 0.91, green: 0.95, blue: 0.95), lineWidth: 1)
                            
                        )
                    Text("Consultion Start")
                        .font(
                            Font.custom("Inter", size: 16)
                                .weight(.semibold)
                        )
                        .foregroundColor(Color(red: 0.1, green: 0.6, blue: 0.56))
                        .padding(.bottom, 40.0)
                    
                    
                    
                    
                    Text("You can consult your problem to the doctor")
                        .font(
                            Font.custom("Inter", size: 12)
                                .weight(.medium)
                        )
                        .foregroundColor(Color(red: 0.68, green: 0.68, blue: 0.68))
                        .multilineTextAlignment(.center)
                }
                ScrollView{
                    HStack{
                        VStack{
                            HStack{
                                Image("Image")
                                    .resizable()
                                    .frame(width: 50,height: 50)
                                    .clipShape(Circle())
                                    .padding(.leading,20)
                                VStack(alignment: .leading){
                                    Text("Dr.Marcus Horizone")
                                        .bold()
                                    Text("10 min ago")
                                        .font(.caption)
                                        .foregroundColor(.gray)
                                }
                                Spacer()
                            }
                            Rectangle()
                            
                                .padding(.bottom, 100.0)
                                .foregroundColor(.clear)
                                .frame(width: 205, height: 36)
                                .background(Color(red: 0.91, green: 0.95, blue: 0.95))
                                .cornerRadius(8)
                                .overlay(
                                    Text("Hello, How can i help you?")
                                        .foregroundColor(.black.opacity(0.6))
                                        .padding(.leading,1)
                                    
                                )
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 237, height: 82)
                                .background(Color(red: 0.1, green: 0.6, blue: 0.56))
                                .cornerRadius(8)
                                .padding(.leading,150)
                                .overlay(
                                    Text("I have suffering from headache and cold for 3 days, I took 2 tablets of dolo, but still pain")
                                        .font(Font.custom("Inter", size: 14))
                                        .foregroundColor(.white)
                                        .frame(width: 209, alignment: .topLeading)
                                        .padding(.leading,170)
                                )  }
                        Spacer()
                    }.padding()
                    
                    HStack{
                        VStack{
                            HStack{
                                Image("Image")
                                    .resizable()
                                    .frame(width: 50,height: 50)
                                    .clipShape(Circle())
                                    .padding(.leading,30)
                                VStack(alignment: .leading){
                                    Text(".Marcus Horizone")
                                        .bold()
                                    Text("5 min ago")
                                        .font(.caption)
                                        .foregroundColor(.gray)
                                }
                                Spacer()
                            }}
                    }
                    
                    ZStack{
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 221, height: 58)
                            .background(Color(red: 0.91, green: 0.95, blue: 0.95))
                            .cornerRadius(8)
                        Text("Ok, Do you have fever? is the\nheadchace severe")
                            .font(Font.custom("Inter", size: 14))
                            .foregroundColor(Color(red: 0.33, green: 0.33, blue: 0.33))
                    }
                    
                    
                    HStack{
                        VStack{
                            HStack{
                                Image("Image")
                                    .resizable()
                                    .frame(width: 50,height: 50)
                                    .clipShape(Circle())
                                    .padding(.leading,20)
                                VStack(alignment: .leading){
                                    Text("Dr.Marcus Horizone")
                                        .bold()
                                    Text("Onlin ")
                                        .font(.caption)
                                        .foregroundColor(.gray)
                                }
                                Spacer()
                            }
                            
                            
                        }}
                    
                    
                    
                    ZStack{
                        
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 207, height: 50)
                            .background(.white)
                            .cornerRadius(30)
                            .overlay(
                                RoundedRectangle(cornerRadius: 30)
                                    .inset(by: 0.5)
                                    .stroke(Color(red: 0.91, green: 0.95, blue: 0.95), lineWidth: 1)
                                
                                
                            )
                            .padding(.top,90).padding(.trailing,150)
                            
                        
                        Text("Type message ...")
                            .font(Font.custom("Inter", size: 14))
                            .foregroundColor(Color(red: 0.68, green: 0.68, blue: 0.68))
                            .frame(width: 115.92, alignment: .topLeading)
                        
                        .padding(.trailing,150)
                        .padding(.top,90)
                        
                        HStack{
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                RoundedRectangle(cornerRadius: 30)
                                    .fill(.color)
                                    .frame(width: 100, height: 40)
                                    .overlay(
                                        Text("Send")
                                            .foregroundColor(.white)
                                            .bold()
                                    )
                            })
                        }.padding(.leading,200)
                            .padding(.top,100)
                        Spacer()
                    }}}}
    }}


#Preview {
    ChatwithDoctor_()
}
