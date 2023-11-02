//
//  VerificationeCode.swift
//  SehamLab
//
//  Created by Seham almarshedi on 18/04/1445 AH.
//

import SwiftUI

struct VerificationeCode: View {
    var body: some View {
        NavigationStack{
            
            ScrollView{
                
                VStack(spacing:30){
                    
                    VStack(spacing:20){
                        
                        Text("Enter Verification Code")
                            .font(.title)
                            .bold()
                            .foregroundColor(Color.black)
                            .padding(.trailing,40)
                        
                        Text("Enter code that we sent to you number 0828188***  ")
                            .font(.title3)
                            .foregroundColor(Color.gray)
                        HStack{
                            Image(systemName: "square")
                                
                                .padding(.bottom,25)
                                .foregroundColor(.color)
                                .frame(width: 50, height: 50)
                            
                            Image(systemName: "square")
                                
                                .padding(.bottom,25)
                                .foregroundColor(.color)
                                .frame(width: 50, height: 50)
                            
                            Image(systemName: "square")
                            
                                .padding(.bottom,25)
                                .foregroundColor(.color)
                                .frame(width: 50, height: 50)
                        
                            
                        }
                        
                    }
                        
                        ZStack{
                            
                            Text("Verify")
                                .bold()
                                .foregroundColor(.white)
                            
                                .frame(width: 350, height: 60)
                                .background(RoundedRectangle(cornerRadius: 30)
                                            //.stroke(Color.color, lineWidth: 1)
                                    .foregroundColor(Color.color)
                                )
                        }
                        
                        HStack{
                            Text("Don't receive the code ?")
                                .foregroundStyle(.gray)
                            Button(action: {
                            }) {
                                Text("Resend")
                                    .foregroundColor(.color)
                            }
                            
                        } .padding()
                    }}
            }
            }
        }
#Preview {
    VerificationeCode()
}
