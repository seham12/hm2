//
//  ForgotPassword.swift
//  SehamLab
//
//  Created by Seham almarshedi on 18/04/1445 AH.
//

import SwiftUI

struct ForgotPassword: View {
        @State private var email = ""
         //  @State private var phone = ""
           @State var isShow = false
          @Namespace var namespace
    var body: some View {
        
        
       NavigationStack{
            
            ScrollView{
                
                VStack(spacing:20){
                    
                    VStack(spacing:20){
                        
                        Text("Forgot Your Password ?")
                            .font(.title)
                            .bold()
                            .foregroundColor(Color.black)
                            .padding(.trailing,40)
                        
                        Text("Enter your email or your phone number, we will send you confirmation code")
                            .font(.title3)
                            .foregroundColor(Color.gray)
                       
                       // Text("email").padding(.trailing,100).padding()
                       // Text("phone")

                        Button{
                            isShow.toggle()
                         
                        }
                            
                    label:{ RoundedRectangle(cornerRadius: 25)
                           .fill(.gray.opacity(0.3))
                           .frame(width:350 ,height:60)
                           
                            .overlay {
                                if isShow{
                                    RoundedRectangle(cornerRadius: 25.0)
                                        .matchedGeometryEffect(id: "titil", in: namespace)
                                    
                                        .frame(width: 50,height:50)
                                    .frame(minWidth: .infinity, alignment: .trailing)}
                                else{
                                    RoundedRectangle(cornerRadius:25)
                                        .matchedGeometryEffect(id: "titil", in: namespace)
                                        
                                       // .foregroundColor(.blue)
                                       // .background(.black)
                                        .frame(width: 50,height:50)
                                    .frame(minWidth: .infinity, alignment: .leading)}
                                }
                                }
                        

                        TextField("email",text: $email)
                            .frame(width:300 , height: 30)
                            .padding()
                            .background(Color.gradiant)
                            .cornerRadius(30)
                            .background(RoundedRectangle(cornerRadius: 30)
                                .stroke(Color.gray, lineWidth: 1))
                        
                        
                        
                        ZStack{
                            
                            Text("Reset Password")
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
        }
    }
}

#Preview {
    ForgotPassword()
}
