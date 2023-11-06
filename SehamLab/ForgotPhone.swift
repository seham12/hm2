//
//  SwiftUIView6.swift
//  SehamLab
//
//  Created by Seham almarshedi on 08/04/1445 AH.
//

import SwiftUI

struct  ForgotPhone: View {
  
    @State var isShow = false
   @Namespace var namespace
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
                     

                     SecureField("Phone", text: $phone)
                     // .textFieldStyle()
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
