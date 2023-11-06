//
//  FindDoctors.swift
//  SehamLab
//
//
//

import SwiftUI
struct Catogories1: Identifiable {
    let id = UUID()
    let title: String
    let ImageName: String
}
struct TopDoctor6: Identifiable {
let id = UUID()
let ImageName: String
let title: String
let subTitle: String
let review: String
let location: String
    }

struct RecentDoctors: Identifiable {
let id = UUID()
let title: String
let ImageName: String
     
    }
struct FindDoctors: View {
    let Catogories12: Array<Catogories1> = [Catogories1(title: "General", ImageName: "doctor1"),Catogories1(title: "Specialist", ImageName: "f1"),Catogories1(title: "Dentist", ImageName: "f2"),Catogories1(title: "Psychiatrist", ImageName: "f3")]
    let Catogories13: Array<Catogories1> = [Catogories1(title: "Covid-19", ImageName: "f4"),Catogories1(title: "Surgeon", ImageName: "f5"),Catogories1(title: "Cardiologist", ImageName: "f6")]
    
    let DoctorArray2 : Array<TopDoctor6> = [TopDoctor6(ImageName: "Image", title: "Dr.Marcus Horizon", subTitle: "Chardilogist", review: "4,7", location: "800m away")]
                                                                                                                    
    let RecentDoctors1: Array<RecentDoctors> = [RecentDoctors(title: "Dr.Marcus  ", ImageName: "Image"),RecentDoctors(title: "Dr.Maria", ImageName: "Image 1"),RecentDoctors(title: "Dr.Stevi", ImageName: "Image 2"),RecentDoctors(title: "Dr.Luka", ImageName: "Image 3")]
    
    
    @State private var searchText = ""
    var body: some View {
       
            
        HStack{
            Image(systemName: "lessthan")
                .padding(.trailing,100)
            Text("Find Doctor")
                .bold().padding(.trailing,100)
        }
            
                NavigationStack {
            
            Text("\(searchText)")
                .navigationTitle("")
            
                .searchable(text: $searchText)
           
                    
                    HStack{
                        Text("Category")
                            .font(.title2)
                            .bold()
                            .padding()
                        Spacer()
                  
                    }
                    
                          HStack(spacing: 20) {
                              ForEach(Catogories12) { data in
                                  Catogory1(card: data)
                              }
                          }.padding()
                      
                   
                      HStack(spacing: 20) {
                              ForEach(Catogories13) { data in
                                  Catogory1(card: data)
                              }
                          Spacer()
                          }.padding()
                      HStack{
                          Text("Recommended Doctors")
                              .font(.title2)
                              .padding()
                          Spacer()
                      }
                      ScrollView(.horizontal){
                          HStack(spacing: 20) {
                                  ForEach(DoctorArray2 ) { data in
                                      
                                      Doctor1(card: data)
                                  }
                              Spacer()
                              }.padding()
                      }
                      HStack{
                          Text("Your Recent Doctors")
                              .font(.title2)
                              .padding()
                          Spacer()
                      }
                      ScrollView(.horizontal){
                          HStack(spacing: 20) {
                                  ForEach(RecentDoctors1) { data in
                                      RecentDoctorsFun(card: data)
                                  }
                              Spacer()
                              }.padding()
                      }
                      Spacer()
                  }
              }
          }
      
                    
              


func Catogory1(card: Catogories1)-> some View{
    VStack{
        RoundedRectangle(cornerRadius: 20)
            .fill(.white)
            .frame(width: 60,height: 60)
            .shadow( color: .gray.opacity(0.1),radius: 4 )
            .overlay(
                Image(card.ImageName)
                    .resizable()
                    .frame(width: 40,height: 40)
            )
        
        Text(card.title)
            .foregroundColor(.gray)
            .font(.callout)
    }
}

func RecentDoctorsFun(card: RecentDoctors)-> some View{
    VStack{
        Image(card.ImageName)
            .resizable()
            .frame(width: 100,height: 100)
            .clipShape(Circle())
    
        Text(card.title)
    }
}

func Doctor1(card: TopDoctor6)-> some View{
    RoundedRectangle(cornerRadius: 25.0)
        .fill(.gray.opacity(0.1))
        .frame(width: 330,height: 170)
        .overlay(
        RoundedRectangle(cornerRadius: 25.0)
            .fill(.white)
            .stroke(.gray.opacity(0.2))
            .frame(width: 350,height: 150)
            .offset(CGSize(width: 0, height: -10.0))
            .overlay(
                HStack{
                    Image(card.ImageName)
                        .resizable()
                        .frame(width: 100,height: 100)
                        .clipShape(Circle())
                        .padding(.leading,8)
                    
                    VStack(alignment: .leading){
                        Text(card.title)
                            .font(.title2)
                        Text(card.subTitle)
                            .font(.callout)
                            .foregroundColor(.gray)
                        
                        Divider()
                            .padding(.trailing)
                        HStack{
                            RoundedRectangle(cornerRadius: 5)
                                .fill(.gradiant)
                                .frame(width: 45,height: 25)
                                .overlay(
                                    HStack{
                                        
                                        Image(systemName: "star.fill")
                                            .foregroundColor(.color)
                                        Text(card.review)
                                            .foregroundColor(.color)
                                        
                                    }.font(.caption)
                                )
                            
                            HStack{
                                Image(systemName: "mappin.circle.fill")
                                    .foregroundColor(.gray)
                                Text(card.location)
                                    .foregroundColor(.gray)
                                
                            }.font(.caption)
                            
                        }
                    }.padding(.leading)
                   
                    Spacer()
                }.padding(.leading)
                    .padding(.bottom)
            )
            
            
        )
       
}




#Preview {
    
    FindDoctors()
}
