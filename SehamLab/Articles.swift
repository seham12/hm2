//
//  Articles.swift
//  SehamLab
//
//  Created by Seham almarshedi on 20/04/1445 AH.
//

import SwiftUI
struct PAtriclesData: Identifiable{
    let id = UUID()
    let Name: String
}
struct TAtriclesData: Identifiable{
    let id = UUID()
    let Img: String
    let Name: String
    let title: String
    let date: String
    let time: String
    
}
struct RAtriclesData: Identifiable{
    let id = UUID()
    let Img: String
    let title: String
    let date: String
    let time: String
}
struct Articles: View {
    @State private var searchText = ""
    let PArray:Array<PAtriclesData> = [PAtriclesData(Name: "Covid-19"),PAtriclesData(Name:"Diet"),PAtriclesData(Name:"Fitness"),PAtriclesData(Name: "Covid-19")]
    
    let TArray2: Array<TAtriclesData> = [TAtriclesData(Img: "r1", Name: "covid-19", title: "Comparing the astraZeneca and Sinovac COVID-`19 VACCINES", date: "JAN 12,2022 ·", time: "6 min read"),TAtriclesData(Img: "r2", Name: "covid-19", title: "Comparing the astraZeneca and Sinovac COVID-`19 VACCINES", date: "JAN 12,2022 ·", time: "6 min read"),TAtriclesData(Img: "r2", Name: "covid-19", title: "Comparing the astraZeneca and Sinovac COVID-`19 VACCINES", date: "JAN 12,2022 ·", time: "6 min read"),TAtriclesData(Img: "art1", Name: "covid-19", title: "Comparing the astraZeneca and Sinovac COVID-`19 VACCINES", date: "JAN 12,2022 ·", time: "6 min read")]
    
    let RArray3: Array<RAtriclesData> = [RAtriclesData(Img: "r3", title: "The 25 Healthest fruits you can eat, According to a nutritionist", date: "Jan 10,2022 ·", time: "6 min read"),RAtriclesData(Img: "r4", title: "The 25 Healthest fruits you can eat, According to a nutritionist", date: "Jan 10,2022 ·", time: "6 min read"),RAtriclesData(Img: "r6", title: "The 25 Healthest fruits you can eat, According to a nutritionist", date: "Jan 10,2022 ·", time: "6 min read")]
    
    var body: some View {
       
            NavigationStack{
                ScrollView{
                    HStack{
                        Image(systemName: "lessthan")
                            .frame(width: 30, height: 30)
                            .padding(.trailing,30)
                            .bold()
                        Text("Arcticles")
                            .multilineTextAlignment(.trailing)
                            .padding(.leading,50)
                            .font(
                                Font.custom("Inter", size: 20)
                                    .weight(.bold)
                            )//.padding(.vertical)
                            .padding(.trailing)
                        
                        Image("three1")
                            .frame(width: 30, height: 30)
                            .bold()
                            .padding(.leading,60)
                    }
                    NavigationStack {
                        Text(" \(searchText)")
                            .navigationTitle("")
                    }
                    .searchable(text: $searchText)
                    
                    
                    HStack{
                        Text("Popular Articles")
                        
                            .bold()
                            .padding(.horizontal)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Spacer()
                    }.padding()
                    ScrollView(.horizontal,showsIndicators: false){
                        HStack{
                            ForEach(PArray){data in Articles10(data: data)
                                
                            }
                        }.padding(.leading,30)
                        Spacer()
                        
                    }
                    HStack{
                        Text("Trending Articles")
                            .bold()
                        Spacer()
                        NavigationLink("See all", destination: Text(""))
                            .foregroundColor(.color)
                        
                    }.padding(.bottom)
                    Spacer()
                    
                    ScrollView(.horizontal,showsIndicators: false){
                        HStack{
                            ForEach(TArray2){ data in Articles11(data: data)
                                
                            }
                        }.padding(.horizontal)
                        
                        
                        
                    }
                    
                    HStack{
                        Text("Related Articles")
                            .bold()
                        Spacer()
                        NavigationLink("See all", destination: Text(""))
                            .foregroundColor(.color)
                        
                    }
                    Spacer()
                    ScrollView(showsIndicators: false){
                        VStack{
                            ForEach(RArray3){ data in Articles12(data: data)
                                
                            }
                        }.padding(.horizontal)
                        
                    }
                    Spacer()
                    
                    
                }
        }
    }
}
func Articles10(data: PAtriclesData)-> some View{
    
    RoundedRectangle(cornerRadius: 10)
        .fill(.color)
        .frame(width: 120,height: 60)
        .overlay(
            Text(data.Name)
                .foregroundColor(.white)
                .bold()
        )
        .padding(.bottom,70)
    
}

func Articles11(data: TAtriclesData)-> some View{
    RoundedRectangle(cornerRadius: 10)
        .fill(.white)
        .stroke(.color)
        .frame(width: 160,height: 230)
        .overlay(
            VStack(alignment: .leading){
                Image(data.Img)
                    .resizable()
                    .frame(width: 140,height: 100)
                    .padding(.top,10)
                    .padding(.leading,5)
                  
                
                Text(data.Name)
                    .foregroundColor(.color)
                    .font(.caption)
                    .padding(3)
                    .background(.color2)
                
                Text(data.title)
                    .font(.caption)
                    .frame(height: 60)
                    .bold()
                
                HStack{
                    Text(data.date)
                        .foregroundColor(.gray)
                    Text(data.time)
                        .foregroundColor(.color)
                }.font(.caption2)
                .padding(.bottom)
                
                
              Spacer()
                    
            }
            

        )
    
}


func Articles12(data: RAtriclesData)-> some View{
    RoundedRectangle(cornerRadius: 10)
        .fill(.white)
        .stroke(.color)
        .frame(width: 350,height: 100)
        .overlay(
            HStack{
                Image(data.Img)
                    .resizable()
                    .frame(width: 80,height: 80)
                   
                VStack(alignment: .leading){
                    Text(data.title)
                        .font(.callout)
                        .bold()
                    
                    HStack{
                        Text(data.date)
                            .foregroundColor(.gray)
                            .font(.caption2)
                        Text(data.time)
                            .font(.caption2)
                            .foregroundColor(.color)
                    }
                }
               Image( "Booking")
                    .foregroundColor(.color)
                    .offset(y: -30)
                
            }.padding(.horizontal,2)
        
        )
}


#Preview {
    Articles()
}
