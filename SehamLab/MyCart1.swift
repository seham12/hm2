//
//  MyCart1.swift
//  SehamLab
//
//  Created by Seham almarshedi on 20/04/1445 AH.
//

import SwiftUI

struct MyCart1: View {
    var body: some View {
        ZStack{
            Image("car1")
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
            Image(systemName: "checkmark.circle.fill")
                .resizable()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.gradiant)
                .background(Color.color)
                .cornerRadius(60)
                .padding(.bottom,200)
            Text("Payment Success")
                .font(
                    Font.custom("Inter", size: 20)
                        .weight(.bold)
                )
                .multilineTextAlignment(.center)
                .foregroundColor(Color(red: 0.06, green: 0.09, blue: 0.14))
                .frame(width: 211, alignment: .top)
                .padding(.top,50)
            Text("Your payment has been successful, you can have a consultation session with your trusted doctor")
                .font(Font.custom("Inter", size: 16))
                .multilineTextAlignment(.center)
                .foregroundColor(Color(red: 0.63, green: 0.66, blue: 0.69))
                .padding(.top,160)
                .frame(width: 273, alignment: .top)
            
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 183, height: 56)
                .background(Color(red: 0.1, green: 0.6, blue: 0.56))
                .cornerRadius(32)
                .padding(.top,300)

            Text("Back to Home")
              .font(
                Font.custom("Inter", size: 16)
                  .weight(.semibold)
              )
              .multilineTextAlignment(.center)
              .foregroundColor(.white)
              .padding(.top,300)
        }
    }
}

#Preview {
    MyCart1()
}
