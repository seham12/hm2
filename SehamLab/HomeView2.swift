//
//  HomeView2.swift
//  SehamLab
//
//  Created by Seham almarshedi on 18/04/1445 AH.
//

import SwiftUI
struct TopDoctor4: Identifiable {
  let id = UUID()
  let ImageName: String
  let title: String
    let subTitle: String
    let review: String
    let location: String
}
struct HomeView2: View {
    var body: some View {
        let DoctorArray : Array<TopDoctor4> = [TopDoctor4(ImageName: "Image", title: "Dr.Marcus Horizon", subTitle: "Chardilogist", review: "4,7", location: "800m away"),TopDoctor4(ImageName: "Image 1", title: "Dr.Maria Elena", subTitle: "Psychologist", review: "4,7", location: "800 away"),TopDoctor4(ImageName: "Image 2", title: "Dr.Stefi Jessi ", subTitle: "Orthopedist", review: "4,7", location: "800 away"),TopDoctor4(ImageName: "Image4", title: "Dr.Maria", subTitle: "Orthopedist", review: "4,7", location: "800 away"),TopDoctor4(ImageName: "Image 3", title: "Dr.Maria", subTitle: "Orthopedist", review: "4,9", location: "1,5km away")]
        
        VStack{
            HStack{
                    Image(systemName: "lessthan")
                        .padding(.trailing,100)
                    
                    Text("Top Doctor")
                    
                        .bold()
                    // .padding(.horizontal)
                    
                        .padding(.trailing,90)
                    
                    
                    
                    
                    ScrollView{
                        VStack{
                            
                            
                            VStack(spacing: 20) {
                                ForEach(DoctorArray) { data in
                                    TopDoctors(card: data)
                                }
                            }.padding()
                            Spacer()
                        }
                    }
                    //            .navigationTitle("Top Doctor")
                }
            }
        }
        
    }
    func TopDoctors(card: TopDoctor4)-> some View{
        RoundedRectangle(cornerRadius: 20)
            .fill(.white)
            .stroke(.gray.opacity(0.3))
            .frame(width: 350,height: 150)
            .overlay(
                HStack{
                    Image(card.ImageName)
                        .resizable()
                        .frame(width: 130,height: 130)
                        .padding(.leading,8)
                    
                    VStack(alignment: .leading){
                        Text(card.title)
                        Text(card.subTitle)
                            .font(.callout)
                            .foregroundColor(.gray)
                        
                        RoundedRectangle(cornerRadius: 5)
                            .fill(.white)
                            .frame(width: 45,height: 25)
                            .overlay(
                                HStack{
                                    
                                    Image(systemName: "star.fill")
                                        .foregroundColor(.color1)
                                    Text(card.review)
                                        .foregroundColor(.color1)
                                    
                                }.font(.caption)
                            )
                        
                        
                        
                        HStack{
                            Image(systemName: "mappin")
                                .foregroundColor(.gray)
                            Text(card.location)
                                .foregroundColor(.gray)
                            
                        }
                        }.font(.caption)
            }
        
            
     )   }
        
        
        
            
                             
              
                       
        
    

           
#Preview {
    HomeView2()
}

