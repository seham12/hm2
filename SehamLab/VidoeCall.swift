//
//  VdioCall.swift
//  SehamLab
//
//  Created by Seham almarshedi on 20/04/1445 AH.
//

import SwiftUI

struct VidoeCall: View {
    
    var body: some View {
        VStack{
            ZStack{
                Image("doctorcall")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea(.all)
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 400, height: 812)
                    .background(
                        LinearGradient(
                            stops: [
                                Gradient.Stop(color: .black.opacity(0), location: 0.00),
                                Gradient.Stop(color: .black.opacity(0.7), location: 1.00),
                            ],
                            startPoint: UnitPoint(x: 0.5, y: 0.5),
                            endPoint: UnitPoint(x: 0.5, y: 1)
                        )
                    )
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 75, height: 112)
                    .background(
                        Image("imagecall")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 75, height: 112)
                            .clipped()
                    )
                    .background(Color(red: 0.77, green: 0.77, blue: 0.77))
                
                    .cornerRadius(15)
                    .padding(.bottom,550)
                    .padding(.leading,300)
                
                Text("Dr. Marcus Horizon")
                    .font(
                        Font.custom("Inter", size: 16)
                            .weight(.semibold)
                    )
                    .foregroundColor(.white)
                    .padding(.top,350)
                
                
                
                Text("00:05:24")
                .font(Font.custom("Inter", size: 14))
                .foregroundColor(.white)
                .padding(.top,400)
                
                HStack{
                    Image(systemName:"video.circle.fill")
                        .frame(width: 60, height: 60)
                        .foregroundColor(.red)
          
        Image(systemName: "phone.circle.fill")
                        .frame(width: 60, height: 60)
                        .foregroundColor(.gray)
                        
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
            }
            
            
            
            
            
            
        }}}

#Preview {
    VidoeCall()
}
