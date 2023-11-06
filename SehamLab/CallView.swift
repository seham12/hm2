//
//  CallView.swift
//  SehamLab
//
//  Created by Seham almarshedi on 20/04/1445 AH.
//

import SwiftUI

struct CallView: View {
    var body: some View {
        VStack{
            ZStack{
                Image("call")
                           .resizable()
                           .scaledToFill()
                           .edgesIgnoringSafeArea(.all)

       
            
                Rectangle()
                  .foregroundColor(.clear)
                  .frame(width: 812, height: 812)
                  .background(Color(red: 0.77, green: 0.77, blue: 0.77).opacity(0.2))
                //Circle()
                   // .foregroundColor(.clear)
                  //  .frame(width: 237, height: 234)
                    .background(
                        Image("call")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 100)
                            .clipShape(Circle())
                    )
                Text("00:05:24")
                .font(Font.custom("Inter", size: 14))
                .foregroundColor(.white)
                .padding(.top,400)
                
                HStack{
                    Image(systemName:"video.circle.fill")
                        .frame(width: 60, height: 60)
                        .foregroundColor(.gray)
          
        Image(systemName: "phone.circle.fill")
                        .frame(width: 60, height: 60)
                        .foregroundColor(.red)
                        
            Image(systemName: "mic.circle.fill")
                        .frame(width: 60, height: 60)
                        .foregroundColor(.gray)
                       // .opacity(0.2)
                   
                }
                .padding(.top,550)
                VStack{
                    ZStack{ 
                        
                        Text("Swipe back to menu")
                    .font(Font.custom("Inter", size: 14))
                    .foregroundColor(.white)
                            .padding(.top,750)
                        Image("arow")
                            .frame(width: 50, height: 50)
                            .padding(.top,710)
                        // .frame(width: 20, height: 20)
                    }}
                    
               //
            }}
        
    }}


#Preview {
    CallView()
}
