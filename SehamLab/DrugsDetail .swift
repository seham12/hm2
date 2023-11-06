//
//  Schedule.swift
//  SehamLab
//
//  Created by Seham almarshedi on 20/04/1445 AH.
//

import SwiftUI

struct DrugsDetail: View {
    var body: some View {
        HStack{
            Image(systemName: "lessthan")
                .frame(width: 30, height: 30)
                .padding(.trailing,30)
                .bold()
            Text("Drugs Detail")
                .multilineTextAlignment(.trailing)
                .padding(.leading,50)
                .font(
                    Font.custom("Inter", size: 20)
                        .weight(.bold)
                )//.padding(.vertical)
                .padding(.trailing)
            
            Image(systemName:"cart")
                .frame(width: 30, height: 30)
                .bold()
                .padding(.leading,60)
        }
        
        ScrollView{
            VStack{
                Image("ph3")
                    .resizable()
                    .frame(width: 300,height: 300)
                
                HStack{
                    
                    VStack(alignment: .leading){
                        Text("OBH Combi")
                            .bold()
                            .font(.title2)
                        Text("75ml")
                            .foregroundColor(.gray)
                        HStack{
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Text("4.0")
                        }.foregroundColor(.color)
                            .padding(.horizontal,0)
                    }
                    Spacer()
                    
                    Image(systemName: "heart.fill")
                        .resizable()
                        .frame(width: 20,height: 20)
                        .foregroundColor(.red.opacity(0.8))
                }.padding(.horizontal)
                
                HStack{
                    Image(systemName: "minus")
                        .resizable()
                        .frame(width: 20,height: 3)
                        .foregroundColor(.gray)
                    Text("1")
                        .font(.title)
                        .bold()
                        .padding(.horizontal)
                    Image(systemName: "plus")
                        .foregroundColor(.white)
                        .bold()
                        .padding(8)
                        .background(.color)
                    Spacer()
                    Text("$9.99")
                        .font(.title)
                        .bold()
                }.padding()
                HStack{
                    VStack(alignment: .leading){
                        Text("Description")
                            .bold()
                            .padding(.bottom)
                        HStack{
                            Text("OBH COMBI  is a cough medicine containing, Paracetamol, Ephedrine HCl, and Chlorphenamine maleate which is used to relieve coughs accompanied by flu symptoms such as fever, headache, and sneezing...Read more ")
                                .font(Font.custom("Inter", size: 12))
                                .foregroundColor(Color(red: 0.68, green: 0.68, blue: 0.68))
                                .frame(width: 334, alignment: .topLeading)
                        
                        }
                    }
                    Spacer()
                }.padding(.horizontal)
                
                Spacer()
                
                HStack{
                    Image(systemName: "cart")
                        .resizable()
                        .frame(width: 30,height: 30)
                        .foregroundColor(.color)
                        .padding()
                        .background(.color2)
                        .cornerRadius(20)
                    Button(action:{
                        
                        
                    }) {
                        Text("Buy Now")
                            .fontWeight(.regular)
                            .frame(width: 230,height: 20)
                            .font(.title3)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.color)
                            .cornerRadius(40)
                            .padding(20)
                    }
                }.padding(.top,80)
            }
        }
    }
}

#Preview {
    DrugsDetail()
}
