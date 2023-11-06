//
//  HomeViwe1.swift
//  SehamLab
//
//  Created by Seham almarshedi on 18/04/1445 AH.
//

import SwiftUI
struct TopDoctor1: Identifiable {
  let id = UUID()
  let ImageName: String
  let title: String
    let subTitle: String
    let review: String
    let location: String
}

struct HomeViwe1: View {
    let TopDoctor3: Array<TopDoctor1> = [TopDoctor1(ImageName: "Image", title: "Dr.Marcus", subTitle: "Chardilogist", review: "4,7", location: "800m away"),TopDoctor1(ImageName: "Image 1", title: "Dr.Maria", subTitle: "Psychologist", review: "4,9", location: "1,5km away"),TopDoctor1(ImageName: "Image 2", title: "Dr.Maria", subTitle: "Orthopedist", review: "4,8", location: "2km away")]
    @State private var searchText = ""
    var body: some View {
        VStack{
            HStack{
                Text("Find your desire \nhealt solution")
                    .font(
                        Font.custom("Inter", size: 22)
                            .weight(.semibold)
                            .bold()
                    )
                
                    .foregroundColor(.black)
                    .foregroundColor(.black)
                    .padding(.trailing,150)
                //.padding(.top,50)
                Image(systemName: "bell")
                    .frame(width: 24, height: 24)
                //  .padding(.leading,350)
                //  .padding(.bottom,300
                //)
            }
            NavigationStack {
                Text("\(searchText)")
                    .navigationTitle("")
            }
            .searchable(text: $searchText)
            HStack{
                ZStack{
                    Image("doctor1")
                        .resizable()
                        .frame(width: 40, height: 50)
                        .background(Color.white)
                        .cornerRadius(3)
                        .padding(.trailing,5)
                    Text("Doctor")
                        .font(Font.custom("SF Pro Display", size: 14))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 0.63, green: 0.66, blue: 0.69))
                        .padding(.top,100)
                }
                
                
                ZStack{
                    Image("phramacy")
                        .resizable()
                        .frame(width: 40, height: 50)
                        .background(Color.white)
                        .cornerRadius(3)
                        .padding(.leading,5)
                    
                    Text("Pharmacy")
                        .font(Font.custom("SF Pro Display", size: 14))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 0.63, green: 0.66, blue: 0.69))
                        .padding(.top,100)
                }
                
                
                
                ZStack{
                    
                    Image("Hospital")
                    
                        . resizable()
                        .frame(width: 40, height: 50)
                        .background(Color.white)
                        .cornerRadius(3)
                        .padding(.leading,5)
                    
                    Text("Hospital")
                    
                        .font(Font.custom("SF Pro Display", size: 14))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 0.63, green: 0.66, blue: 0.69))
                        .padding(.top,100)
                }
            
                
                ZStack{
                    Image("Ambulance")
                        .resizable()
                        .frame(width: 40, height: 50)
                        .background(Color.white)
                        .cornerRadius(3)
                        .padding(.leading,5)
                    
                    Text("Ambulance")
                        .font(Font.custom("SF Pro Display", size: 14))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 0.63, green: 0.66, blue: 0.69))
                        .padding(.top,100)
                    
                    
                }}
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
         
            
            // .padding(.bottom,480)
            
            NavigationStack{
                ScrollView{
                    VStack{
                        HStack{
                            
                            ZStack{
                                
                                
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 360, height: 135)
                                    .background(Color(red: 0.91, green: 0.95, blue: 0.95))
                                    .cornerRadius(10)
                                //.overlay(Text
                                Text("Early protection for\nyour family health")
                                    .padding(.trailing,130).padding(.bottom,40)
                                    .font(.title3)
                                    .bold()
                                
                                    .foregroundColor(Color(.black))
                                
                                Button(action:{
                                    
                                    
                                }) {
                                    Text("Learn more")
                                        .bold()
                                        .fontWeight(.regular)
                                        .frame(width: 90,height: 5)
                                        .foregroundColor(.white)
                                        .padding()
                                        .background(Color.color)
                                        .cornerRadius(40)
                                        .padding(.trailing,60)
                                        .padding(.top,70)
                                    
                                    
                                    Circle()
                                        .fill(.white.opacity(0.5))
                                        .frame(width: 120)
                                        .overlay(
                                            Image("Image5")
                                                .resizable()
                                                .frame(width: 100,height: 130)
                                        )
                                    
                                    
                                    
                                }
                                
                            }
                            
                            
                        }
                       
                       
                        HStack{
                            Text("Top Doctor")
                                .bold()
                                .padding(.trailing,220)
                            
                            NavigationLink( "See all", destination: HomeViwe1())
                                .foregroundColor(.color)
                            
                        }
                        
                        ScrollView(.horizontal,showsIndicators: false){
                            HStack(spacing: 20) {
                                VStack(spacing: 20) {
                                    ForEach(TopDoctor3) { data in TopDoctors(card: data)
                                    }
                                    
                                }
                            }
                        }
                     
                    }
                }
                
            }
            
           
        }
        
        
    }
    
    
   
    
        func TopDoctors(card:TopDoctor1)-> some View{
         RoundedRectangle(cornerRadius: 10)
         .fill(.white)
         .frame(width: 160,height: 220)
         .shadow(color:.gray.opacity(0.2) ,radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
         .overlay(
         VStack{
         Image(card.ImageName)
         .resizable()
         .frame(width: 100,height: 100)
         .clipShape(Circle())
         Text(card.title)
         
         Text(card.subTitle)
         .font(.callout)
         .foregroundColor(.gray)
         HStack{
         RoundedRectangle(cornerRadius: 5)
         .fill(.blue)
         .frame(width: 45,height: 25)
         .overlay(
         HStack{
         
         Image(systemName: "star.fill")
         .foregroundColor(.green)
         Text(card.review)
         .foregroundColor(.green)
         
         }.font(.caption)
         )
         
         
         }
         }
         )
         
         }
    
         }
         
         
         
         
         
         
         
         
         
        
    

#Preview {
   HomeViwe1()
}
