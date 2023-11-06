//
//  LogOut.swift
//  SehamLab
//
//  Created by Seham almarshedi on 20/04/1445 AH.
//

import SwiftUI

struct LogOut: View {
    var body: some View {
        
        ZStack{
            Image("p4")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea(.all)
            
            VStack(alignment: .center, spacing: 0) {  }
                .padding(32)
                .frame(width: 327, height: 434, alignment: .center)
                .background(.white)
                .cornerRadius(24)
            
            VStack(alignment: .center, spacing: 52.55225) {  }
                .padding(.horizontal, 0)
                .padding(.top, 20.42749)
                .padding(.bottom, 0)
                .frame(width: 263, height: 370, alignment: .bottom)
            Image(systemName:
                 "rectangle.portrait.and.arrow.right"
            )
           
            .resizable()
            .foregroundColor(.color)
            .frame(width: 100,height: 100)
            .background(.gradiant)
            .cornerRadius(20)
            .padding(.bottom,200)
            Text("Are you sure to log out of your account?")
                .font(
                    Font.custom("Inter", size: 20)
                        .weight(.bold)
                )
                .multilineTextAlignment(.center)
                .foregroundColor(Color(red: 0.06, green: 0.09, blue: 0.14))
            
                .frame(width: 263, alignment: .top)
            
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 183, height: 56)
                .background(Color(red: 0.1, green: 0.6, blue: 0.56))
            
                .cornerRadius(32)
                .padding(.top,150)

            Text("Log Out")
                .font(
                    Font.custom("Inter", size: 16)
                        .weight(.semibold)
                )
                .multilineTextAlignment(.center)
                .foregroundColor(.white)
                .padding(.top,150)

            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 183, height: 56)
                .background(Color(red: 0.96, green: 0.97, blue: 1))
                .cornerRadius(32)
                .padding(.top,300)
            Text("Cancel")
                .font(
                    Font.custom("Inter", size: 16)
                        .weight(.semibold)
                )
                .multilineTextAlignment(.center)
                .foregroundColor(Color(red: 0.1, green: 0.6, blue: 0.56))
                .padding(.top,300)
            
        }}
    
}
#Preview {
    LogOut()
}
