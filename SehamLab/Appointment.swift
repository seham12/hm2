//
//  Appointment.swift
//  SehamLab
//
//  Created by Seham almarshedi on 20/04/1445 AH.
//

import SwiftUI

struct Appointment: View {
    var body: some View {
        NavigationStack{
            HStack{
                Image(systemName: "lessthan")
                    .padding(.trailing,100)
                    .padding(.bottom,300)
                Text("Appointment")
                bold()
                   // .padding(.bottom,300)
                 //   .padding(.trailing,100)
            }
            .padding()
            
            ScrollView{
                VStack{
                    
                    RoundedRectangle(cornerRadius: 15)
                        .fill(.white)
                        .stroke(.gray.opacity(0.2))
                        .frame(width: 350,height: 150)
                        .overlay(
                            HStack{
                                Image("Image")
                                    .resizable()
                                    .frame(width: 130,height: 130)
                                    .padding(.trailing,5)
                                
                                VStack(alignment: .leading){
                                    Text("Dr.Marcus Horizon")
                                    Text("Chardiologist")
                                        .font(.callout)
                                        .foregroundColor(.gray)
                                    
                                    RoundedRectangle(cornerRadius: 5)
                                        .fill(.color1)
                                        .frame(width: 45,height: 25)
                                        .overlay(
                                            HStack{
                                                
                                                Image(systemName: "star.fill")
                                                    .foregroundColor(.color)
                                                Text("4,7")
                                                    .foregroundColor(.color)
                                                
                                            }.font(.caption)
                                        )
                                    
                                    HStack{
                                        Image(systemName: "mappin")
                                            .foregroundColor(.gray)
                                        Text("800m away")
                                            .foregroundColor(.gray)
                                        
                                    }.font(.caption)
                                    
                                }.padding(.horizontal)
                                
                        Spacer()
                            }.padding()
                        )
                    HStack{
                        Text("Date")
                            .bold()
                        Spacer()
                        Text("Change")
                            .foregroundColor(.gray)
                            .font(.callout)
                    }.padding(.horizontal)
                        .padding(.top)
                    HStack{
                        Image("a1")
                            .resizable()
                            .foregroundColor(.color)
                            .frame(width: 20,height: 20)
                            .padding(10)
                            .background(.color)
                            .cornerRadius(50)
                        Text("Wednesday, Jun 23, 2022 | 10:00 AM")
                            .font(.callout)
                        Spacer()
                    }.padding(.horizontal)
                    Divider()
                        .padding(.horizontal)
                    
                    HStack{
                        Text("Reason")
                            .bold()
                        Spacer()
                        
                        Text("Change")
                            .foregroundColor(.gray)
                            .font(.callout)
                    }.padding(.horizontal)
                        .padding(.top)
                    HStack{
                        Image( "a2")
                            .resizable()
                            .foregroundColor(.color)
                            .frame(width: 25,height: 25)
                            .padding(10)
                            .background(.color)
                            .cornerRadius(50)
                        Text("chest pain")
                        Spacer()
                        
                    }.padding(.horizontal)
                    Divider()
                        .padding(.horizontal)
                    VStack{
                        HStack{
                            Text("Payment Detail")
                                .bold()
                            Spacer()
                        }.padding()
                        HStack{
                            Text("Consultation")
                                .foregroundColor(.gray.opacity(0.5))
                                .bold()
                            
                            
                            Text("$60.00")
                        }.padding(.horizontal)
                            .padding(.vertical,5)
                        HStack{
                            Text("Admin Fee")
                                .foregroundColor(.gray.opacity(0.5))
                                .bold()
                            
                            Spacer()
                            Text("$01.00")
                        }.padding(.horizontal)
                            .padding(.vertical,5)
                        HStack{
                            Text("Additional Discounts")
                                .foregroundColor(.gray.opacity(0.5))
                                .bold()
                            
                            Spacer()
                            Text("-")
                        }.padding(.horizontal)
                            .padding(.vertical,5)
                        HStack{
                            Text("Total")
                                .bold()
                            
                            Spacer()
                            Text("$61.00")
                        }.padding(.horizontal)
                            .padding(.vertical,5)
                        
                    }
                    
                    Divider()
                        .padding(.horizontal)
                    
                    HStack{
                        Text("Payment Detail")
                            .bold()
                        Spacer()
                    }.padding()
                    
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.white)
                        .stroke(.gray.opacity(0.2))
                        .frame(width: 350,height: 50)
                        .overlay(
                            HStack{
                                Text("VISA")
                                    .font(
                                        Font.custom("Inter", size: 16)
                                            .weight(.black)
                                            .italic()
                                    )
                                    .foregroundColor(Color(red: 0.1, green: 0.12, blue: 0.44))
                                Spacer()
                                Text("Change")
                                    .foregroundColor(.gray)
                                    .font(.callout)
                            }.padding()
                        )
                    HStack{
                        VStack(alignment: .leading){
                            Text("Total")
                                .foregroundColor(.gray)
                            Text("$ 61.00")
                                .bold()
                        }
                        
                        Button(action:{
                            
                            
                        }) {
                            Text("Booking")
                                .fontWeight(.regular)
                                .frame(width: 180,height: 20)
                                .font(.title3)
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.white)
                                .cornerRadius(40)
                                .padding(20)
                        }
                    }
                    Spacer()
                }
            }
        }
    }
    
    
}
        


#Preview {
    Appointment()
}
