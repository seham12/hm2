//
//  Pharmacy.swift
//  SehamLab
//
//  Created by Seham almarshedi on 20/04/1445 AH.
//

import SwiftUI
struct ProdactData: Identifiable{
    let id = UUID()
    let Img: String
    let Name: String
    let title: String
    let price: String
   
}


struct Pharmacy: View {
    @State private var searchText = ""
    let ProArray1: Array<ProdactData> = [ProdactData(Img: "ph2", Name: "Panadol", title: "20pcs", price: "$15.99"),ProdactData(Img: "ph3",Name: "Bodrex Herbal", title: "100pcs", price: "$7.99"),ProdactData(Img: "ph4", Name: "Konidin", title: "3pcs", price: "$5.99")]
   
    
    let ProArray2: Array<ProdactData> = [ProdactData(Img: "ph5",Name: "OBH Combi", title: "75ml", price: "$9.99"),ProdactData(Img: "ph2",Name: "Betadine", title:  "50ml", price: "$6.99"),ProdactData(Img: "ph3", Name: "Bodrexin", title: "75ml", price: "$7.99")]
 
    var body: some View {
        HStack{
            Image(systemName: "lessthan")
                .frame(width: 30, height: 30)
                .padding(.trailing,30)
                .bold()
            Text("Pharmacy")
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
        NavigationStack {
            Text(" \(searchText)")
                .navigationTitle("")
        }
        .padding()
        .searchable(text: $searchText)
        
        Rectangle()
            .foregroundColor(.clear)
            .frame(width: 370, height: 135)
            .background(Color(red: 0.91, green: 0.95, blue: 0.95))
            .cornerRadius(10)
           
            .overlay(
                    
                    HStack{
                        VStack{
                            Text("Order quickly with Prescription")
                                .bold()
                                .font(.subheadline)
                                .frame(width: 200)
                                .padding(.top)
                                .padding(.leading,120)
                            Button(action:{
                            }) {
                                Text("Upload Prescription")
                                    
                                    .font(.caption)
                                    .frame(width: 120,height: 10)
                              
                                    .foregroundColor(.white)
                                    .padding()
                                    .background(Color.color)
                                    .cornerRadius(10)
                                    .padding(10)
                                    .padding(.leading,120)
                            }
                         
                        }
                        
                    
                   
                        Image( "ph1")
    
                            .padding(.trailing,120)
                           
                      
                            .foregroundColor(.gray)
                    }
                )
        
        
        HStack{
            Text("Popular Products")
                .bold()
            Spacer()
            NavigationLink("See all", destination: Text(""))
                .foregroundColor(.color)
            
        }.padding()
        
        
             ScrollView(.horizontal,showsIndicators: false){
                 HStack{
                     ForEach(ProArray1){ data in Products(card: data)
                         
                     }
                 }.padding()
             
             }
             
             HStack{
                 Text("Products on sale")
                     .bold()
                 Spacer()
                 NavigationLink("See all", destination: Text(""))
                     .foregroundColor(.color)
                 
             }.padding()
             
             ScrollView(.horizontal,showsIndicators: false){
                 HStack{
                     ForEach(ProArray2){ data in Products(card: data)
                         
                     }
                 }.padding()
             
             }
             Spacer()
         }
     }
     
 

func Products(card:  ProdactData)-> some View{
 RoundedRectangle(cornerRadius: 10)
     .fill(.white)
     .stroke(.color2)
     .frame(width: 120,height: 160)
     .overlay(
         VStack(alignment: .leading){
             Image(card.Img)
                 .resizable()
                 .frame(width: 60,height: 60)
                 .padding(.leading,20)
             Text(card.Name)
                 .font(.callout)
                 .bold()
             Text(card.title)
                 .font(.caption)
                 .foregroundColor(.gray)
             HStack{
                 Text(card.price)
                     Spacer()
                 Image(systemName: "plus.square.fill")
                     .resizable()
                     .frame(width: 20,height: 20)
                     .foregroundColor(.color)
             }.padding(.horizontal,5)
         }.padding(.horizontal,5)
     )
}

   
        

#Preview {
    Pharmacy()
}
