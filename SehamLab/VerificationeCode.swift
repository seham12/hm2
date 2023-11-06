//
//  VerificationeCode.swift
//  SehamLab
//
//  Created by Seham almarshedi on 18/04/1445 AH.
//

import SwiftUI

struct VerificationeCode: View {
    @State private var number = ""

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
                        .foregroundColor(Color.gray)}
                        HStack{
                            
                            SecureField("", text: $number)
                            // .textFieldStyle()
                                .frame(width:40 , height: 20)
                                .padding()
                                .background(Color.white)
                                .cornerRadius(15)
                                .background(RoundedRectangle(cornerRadius: 30)
                                .stroke(Color.color, lineWidth: 1))

                            SecureField("", text: $number)
                            // .textFieldStyle()
                                .frame(width:40 , height: 20)
                                .padding()
                                .background(Color.white)
                                .cornerRadius(15)
                                .background(RoundedRectangle(cornerRadius: 30)
                                .stroke(Color.color, lineWidth: 1))

                            
                            SecureField("", text: $number)
                            // .textFieldStyle()
                                .frame(width:40 , height: 20)
                                .padding()
                                .background(Color.white)
                                .cornerRadius(15)
                                .background(RoundedRectangle(cornerRadius: 30)
                                    .stroke(Color.color, lineWidth:1 ))


                            
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
