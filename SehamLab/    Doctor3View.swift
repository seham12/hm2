//
//  SwiftUIView5.swift
//  SehamLab
//
//  Created by Seham almarshedi on 08/04/1445 AH.
//

import SwiftUI

struct Doctor3View: View {
    var body: some View {
        
        VStack (spacing: 0) {
            Button("Skip"){}
                .frame(maxWidth: .infinity , alignment: .trailing)
                .foregroundColor(.gray)
                .padding()
            Image("man1")
                .resizable()
                .frame(width: 350 , height:450)
            ZStack{
                RoundedRectangle(cornerRadius: 22)
                    .fill(
                        LinearGradient(colors: [Color("gradiant"), .clear],
                                       startPoint: .top,
                                       endPoint: .bottom)
                        
                    )
                VStack{
                    Text("Get connect our Online Consultation")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    HStack (spacing: 10){
                        RoundedRectangle(cornerRadius: 22.0)
                            .frame(width: 30, height: 5)
                            .foregroundColor(.mint)
                            .opacity(0.2 )
                        RoundedRectangle(cornerRadius: 22.0)
                            .frame(width: 30, height: 5)
                            .foregroundColor(.mint)
                            .opacity(0.2 )
                        
                    Button(action: {
                        print("Round Action")
                    }) {
                        Image(systemName: "arrow.right")
                            .frame(width: 50, height: 50)
                            .foregroundColor(Color.white)
                            .background(Color("Color"))
                            .clipShape(Circle())
                            .frame(maxWidth: .infinity , alignment: .trailing)
                       
                            
                        }
                    }}
                
            }//: ZSTACK
            .padding(.horizontal)
                        }}}
#Preview {


    Doctor3View()

    }
