//
//  SwiftUIView6.swift
//  SehamLab
//
//  Created by Seham almarshedi on 08/04/1445 AH.
//

import SwiftUI

struct  ForgotPhone: View {
  
        @State private var email = ""
        @State private var phone = ""
        
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
                     
                     //  Image(systemName: "envelope.fill")
                     TextField("email",text: $email)
                         .frame(width:300 , height: 30)
                         .padding()
                         .background(Color.gradiant)
                         .cornerRadius(30)
                         .background(RoundedRectangle(cornerRadius: 30)
                             .stroke(Color.gray, lineWidth: 1))
                     
                     
                     
                     SecureField("Phone", text: $phone)
                     // .textFieldStyle()
                         .frame(width:300 , height: 30)
                         .padding()
                         .background(Color.gradiant)
                         .cornerRadius(30)
                         .background(RoundedRectangle(cornerRadius: 30)
                             .stroke(Color.gray, lineWidth: 1)
                         )
                     TextField("Enter your email", text: $email)
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
             }}}
 }
}


    #Preview {
        ForgotPhone()
    }
