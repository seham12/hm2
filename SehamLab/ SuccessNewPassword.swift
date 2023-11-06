//
//   SuccessNewPassword.swift
//  SehamLab
//
//  Created by Seham almarshedi on 18/04/1445 AH.
//

import SwiftUI

struct _SuccessNewPassword: View {
    @State private var password = ""
    @State private var confirmPassword = ""
    
    var body: some View {
        
        
        NavigationStack{
            
            ScrollView{
                
                VStack(spacing:20){
                    
                    VStack(spacing:20){
                        //.background(RoundedRectangle(cornerRadius: 30))
                        //.stroke(Color.color, lineWidth: 1)
                        //  .foregroundColor(Color.green)
                        
                        // .fill(Color.gray)
                        // .frame(width:500 , height: 30)
                        
                        //  .cornerRadius(30))
                        
                        Text("Create New Password ?")
                            .font(.title)
                            .bold()
                            .foregroundColor(Color.black)
                            .padding(.trailing,20)
                        
                        Text("Create your New password to login")
                            .font(.title3)
                            .foregroundColor(Color.gray)
                            .padding(.trailing,20)
                        
                    }
                    
                    
                    SecureField("password", text: $password)
                    // .textFieldStyle()
                        .frame(width:300 , height: 30)
                        .padding()
                        .background(Color.gradiant)
                        .cornerRadius(30)
                        .background(RoundedRectangle(cornerRadius: 30)
                            .stroke(Color.gray, lineWidth: 1))
                    
                    SecureField("confirm password", text: $confirmPassword)
                    // .textFieldStyle()
                        .frame(width:300 , height: 30)
                        .padding()
                        .background(Color.gradiant)
                        .cornerRadius(30)
                        .background(RoundedRectangle(cornerRadius: 30)
                            .stroke(Color.gray, lineWidth: 1)
                        )
                    
                    ZStack{
                        
                        Text("Create Password")
                            .bold()
                            .foregroundColor(.white)
                        
                            .frame(width: 350, height: 60)
                            .background(RoundedRectangle(cornerRadius: 30)
                                        //.stroke(Color.color, lineWidth: 1)
                                .foregroundColor(Color.color)
                            )
                    }
                    
                    
                }
            }
            
        }
        
        VStack{
            ZStack{
                
                Rectangle()
                    .foregroundColor(.gradiant)
                    .frame(width: 350, height:350)
                    .background(Color.white)
                
                    .cornerRadius(30)
                
                Image(systemName: "checkmark.circle.fill")
                    .resizable()
                    .frame(width: 90, height: 90)
                    .foregroundColor(Color.gradiant)
                    .background(Color.color)
                    .cornerRadius(60)
                    .padding(.bottom,200)
                
                Text("Success")
                    .font(.title)
                    .fontWeight(.bold)
                Text("You have successfully reset your password.")
                // .frame(width: 340)
                    .font(.title2)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    .padding(.top,100)
                Button(action: {
                    
                }) {
                    Text("Login in")
                        .font(.title2).bold()
                }
                .frame(width:150 , height: 50)
                // .frame(minWidth: 0, maxWidth: .infinity)
                
                // .padding(.horizontal)
                .background(Color.color)
                .foregroundColor(.white)
                .cornerRadius(30)
                .padding(.top,250)
            }
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
        }
        Spacer()
        Spacer()
        Spacer()
        Spacer()
        Spacer()
        Spacer()
        Spacer()
        Spacer()
        Spacer()
        Spacer()
        Spacer()
        Spacer()
        Spacer()
        Spacer()
        Spacer()
        
        
        
        Spacer()
    }
}
    

#Preview {
    _SuccessNewPassword()
}
