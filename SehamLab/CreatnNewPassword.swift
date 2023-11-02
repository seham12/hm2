//
//  CreatnNewPassword.swift
//  SehamLab
//
//  Created by Seham almarshedi on 18/04/1445 AH.
//

import SwiftUI

struct CreatnNewPassword: View {
    @State private var password = ""
    @State private var confirmPassword = ""
    
    var body: some View {
        
        
        NavigationStack{
            
            ScrollView{
                
                VStack(spacing:20){
                    
                    VStack(spacing:20){
                        
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
                }}}
}

#Preview {
    CreatnNewPassword()
}
