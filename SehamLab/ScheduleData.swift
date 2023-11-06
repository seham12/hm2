//
//  Schedule .swift
//  SehamLab
//
//  Created by Seham almarshedi on 20/04/1445 AH.
//

import SwiftUI
struct ScheduleD: Identifiable{
    let id = UUID()
    let Imag: String
    let title: String
    let subTitle: String
    let date: String
    let time: String
}
struct ScheduleData: View {
 
    
    let Schedule: Array<ScheduleD> = [ScheduleD(Imag: "Image", title: "Dr.Marcus Horizon", subTitle: "Chardiologist", date: "26/06/2022", time: "10:30 Am"),ScheduleD(Imag: "Image 3", title: "Dr.Alysa Hana", subTitle: "psikeater", date: "28/06/2022", time: "2 pm")]
    var body: some View {
       
        NavigationStack{
            HStack{
                Text("Schedule")
                    .font(.title)
                    .bold()
                
             Spacer()
                
                Image(systemName: "bell")
                    .resizable()
                    .frame(width: 20,height: 20)
            }.padding()
            //HStack{
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 335, height: 46)
                    .background(Color(red: 0.91, green: 0.95, blue: 0.95))
                    .overlay(
                            
                        HStack{
                            
                          Text("Upcoming ")
                              .bold()
                              .foregroundColor(.white)
                              .background(.color)
                              
                            Text("  Completed     Canceled")
                            
                        })
            ScrollView{
                VStack{
                    
                    VStack(spacing: 20) {
                        ForEach(Schedule) { data in
                            scheduleFun(card: data)
                        }
                    }.padding()
                    
                Spacer()
                }
            }
        }
    }
    
    func scheduleFun (card: ScheduleD)-> some View{
        RoundedRectangle(cornerRadius: 20)
            .fill(.white)
            .stroke(.gray.opacity(0.2))
            .frame(width: 350,height: 180)
            .overlay(
                VStack{
                    HStack{
                        VStack(alignment: .leading){
                            Text(card.title)
                                .bold()
                            Text(card.subTitle)
                                .foregroundColor(.gray)
                            
                        }
                        Spacer()
                        Image(card.Imag)
                            .resizable()
                            .frame(width: 60,height: 60)
                            .clipShape(Circle())
                    }.padding()
                    
                    HStack{
                        HStack{
                            Image(systemName: "calendar")
                            Text(card.date)
                        }
                        HStack{
                            Image(systemName: "clock")
                            Text(card.time)
                        }
                        HStack{
                            Image(systemName: "circle.fill")
                                .resizable()
                                .frame(width: 8,height: 8)
                                .foregroundColor(.green)
                            Text("Confirmed")
                        }
                        Spacer()
                    }.padding(.horizontal)
                        .foregroundColor(.gray)
                        .font(.caption)
                    
                    HStack{
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            RoundedRectangle(cornerRadius: 8)
                                .fill(.color2)
                                .frame(width: 150, height: 40)
                                .overlay(
                                    Text("Cancle")
                                        .foregroundColor(.black)
                                    
                                )
                        })
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            RoundedRectangle(cornerRadius: 8)
                                .fill(.color)
                                .frame(width: 150, height: 40)
                                .overlay(
                                    Text("Reschedule")
                                        .foregroundColor(.white)
                                        .bold()
                                )
                        })
                    }
                    
                    
                    Spacer()
                }
            )
        
    }
    }


#Preview {
    ScheduleData()
    
}
