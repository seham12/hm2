//
//  ProfileView.swift
//  SehamLab
//
//  Created by Seham almarshedi on 20/04/1445 AH.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
       
            ZStack {
                Color.color1
                    .ignoresSafeArea(.all)
                VStack{
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 100, height:100)
                        .background(
                            Image("profile")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 80, height: 80)
                                .clipped()
                        )
                        .cornerRadius(80)
                    //.padding(.bottom,500)
                    
                    Text("Amelia Renata")
                        .font(
                            Font.custom("Inter", size: 18)
                                .weight(.semibold)
                        )
                        .foregroundColor(.white)
                    VStack{
                        HStack{
                            ZStack{
                                Image("p1")
                                    .resizable()
                                
                                    .frame(width: 32,height: 32)
                                    .padding(.bottom,40)
                                Text("Heart rate")
                                    .font(
                                        Font.custom("Inter", size: 10)
                                            .weight(.semibold)
                                        
                                    )
                                    .foregroundColor(Color(red: 0.76, green: 0.95, blue: 0.94))
                                    .padding(.top,10)
                                Text("215bpm")
                                    .font(
                                        Font.custom("Inter", size: 16)
                                            .weight(.semibold)
                                    )
                                    .multilineTextAlignment(.center)
                                    .padding(.top,40)
                                
                            }
                            .foregroundColor(.white)
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 1, height: 44)
                                .background(Color(red: 0.76, green: 0.95, blue: 0.94))
                            ZStack{
                                Image("p2")
                                    .resizable()
                                    .frame(width: 32,height: 32)
                                    .padding(.bottom,40);                            Text("Calories")
                                    .font(
                                        Font.custom("Inter", size: 10)
                                            .weight(.semibold)
                                    )
                                    .foregroundColor(Color(red: 0.76, green: 0.95, blue: 0.94))
                                    .padding(.top,10)
                                Text("756cal")
                                    .font(
                                        Font.custom("Inter", size: 16)
                                            .weight(.semibold)
                                    )
                                    .foregroundColor(.white)
                                    .multilineTextAlignment(.center)
                                    .padding(.top,40)
                            }
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 1, height: 44)
                                .background(Color(red: 0.76, green: 0.95, blue: 0.94))
                            
                            ZStack{
                                Image("p3")
                                    .resizable()
                                    .frame(width: 32,height: 32)
                                    .padding(.bottom,40)
                                Text("Weight")
                                    .font(
                                        Font.custom("Inter", size: 10)
                                            .weight(.semibold)
                                    )
                                    .foregroundColor(Color(red: 0.76, green: 0.95, blue: 0.94))
                                //  Text("Weight")
                                
                                
                                    .padding(.top,10)
                                Text("103lbs")
                                    .font(
                                        Font.custom("Inter", size: 16)
                                            .weight(.semibold)
                                    )
                                    .foregroundColor(.white)
                                    .multilineTextAlignment(.center)
                                    .padding(.top,40)
                                
                            }
                        }}
                    ZStack{
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 400, height: 550)
                            .background(.white)
                        
                            .cornerRadius(30)
                        VStack{
                            HStack{
                                Image(systemName: "heart.circle.fill")
                                    .resizable()
                                    .foregroundColor(Color.color)
                                
                                    .frame(width: 32,height: 32)
                                Text("My Saved")
                                
                                    .font(
                                        Font.custom("Inter", size: 16)
                                            .weight(.semibold)
                                    )
                                
                                    .foregroundColor(Color(.black))
                                Image(systemName: "chevron.forward")
                                    .padding(.leading,200)
                            }
                            Divider()
                                .frame(width: 350)
                            
                            HStack{
                                Image(systemName: " creditcard.circle.fill")
                                    .resizable()
                                    .foregroundColor(Color.color)
                                
                                    .frame(width: 30,height: 30)
                                
                                Text("Appointmnet")
                                    .font(
                                        Font.custom("Inter", size: 16)
                                            .weight(.semibold)
                                    )
                                    .foregroundColor(Color(.black))
                                Image(systemName: "chevron.forward")
                                    .padding(.leading,180)
                            }
                            
                            Divider()
                                .frame(width: 350)
                                .padding(.horizontal)
                            HStack{
                                
                                Image(systemName: "creditcard.circle.fill")
                                    .resizable()
                                    .foregroundColor(Color.color)
                                
                                    .frame(width: 30,height: 30)
                                Text("Payment Method")
                                    .font(
                                        Font.custom("Inter", size: 16)
                                            .weight(.semibold)
                                    )
                                    .foregroundColor(Color(.black))
                                
                                Image(systemName: "chevron.forward")
                                .padding(.leading,160)}
                            
                            Divider()
                                .frame(width: 350)
                                .padding(.horizontal)
                            HStack{
                                
                                Image(systemName: " creditcard.circle.fill")
                                    .resizable()
                                    .frame(width: 30,height: 30)
                                Text("FAQs")
                                
                                    .font(
                                        Font.custom("Inter", size: 16)
                                            .weight(.semibold)
                                    )
                                
                                Image(systemName: "chevron.forward")
                                    .padding(.leading,240)
                                    .foregroundColor(Color(.black))
                            }
                            
                            Divider()
                                .frame(width: 350)
                            
                            
                            VStack{
                                HStack{
                                    Image(systemName: "exclamationmark.circle.fill ")
                                        .resizable()
                                        .frame(width: 30,height: 30)
                                        .foregroundColor(Color.red)
                                    Text("Logout")
                                        .font(
                                            Font.custom("Inter", size: 16)
                                                .weight(.semibold)
                                        )
                                        .foregroundColor(Color(red: 1, green: 0.36, blue: 0.36))
                                    Image(systemName: "chevron.forward")
                                    
                                        .padding(.leading,240)
                                    
                                }
                                
                                //  .frame(width: 350)
                            }}
                    }
                }  }
        }}


#Preview {
    ProfileView()
}
