//
//  SwiftUIView6.swift
//  SehamLab
//
//  Created by Seham almarshedi on 08/04/1445 AH.
//

import SwiftUI

struct SwiftUIView6: View {
    var body: some View {
  
            
       //ZStack(
         VStack{
            
                Text("Login")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                    .foregroundColor(Color.black)
                    .padding()
                    .multilineTextAlignment(.center)
            
                Text("Entry your email")
                    .font(.body)
                    .foregroundColor(Color.gray)
                    .background(RoundedRectangle(cornerRadius:30)
                        .frame(width: 300, height:60 ))
                    .foregroundColor(Color.gradiant)
                    .padding()
    
//Spacer()
                Text("Entry password")
                 .font(.body)
                 .foregroundColor(Color.gray)
             .background(RoundedRectangle(cornerRadius:30)
                     .frame(width: 300, height:60 ))
                 .font(.body)
                 .foregroundColor(Color.gradiant)
                 .padding(50)
                    .padding()
                Text("Forgot Passworad ?")
                 .padding(/*@START_MENU_TOKEN@*/EdgeInsets()/*@END_MENU_TOKEN@*/)
                Text("Logine")
                    .font(.body)
                    .foregroundColor(Color.white)
                .background(RoundedRectangle(cornerRadius:30)
                        .frame(width: 300, height:60 ))
                    .font(.body)
                    .foregroundColor(Color.color)
                    .padding(50)
             Text("Don't have an account?")
       // Text("sign UP")
                 .foregroundColor(Color.gray)
                 
                Spacer()
                Text("sign in with Google")
                    .font(.body)
                    .foregroundColor(Color.black)
                .background(RoundedRectangle(cornerRadius:30)
                        .frame(width: 300, height:60 ))
                    .font(.body)
                    .foregroundColor(Color.gradiant)
                Spacer()

             Text("sign in with app")
        
                 .font(.body)
                 .foregroundColor(Color.black)
             .background(RoundedRectangle(cornerRadius:30)
              
                     .frame(width: 300, height:60 ))
                 .font(.body)
                 .foregroundColor(Color.gradiant)
                 .padding()

             Spacer()
             Text("sign in with facebook")
                 .padding()
                 .font(.body)
                 .foregroundColor(Color.black)
             .background(RoundedRectangle(cornerRadius:30)
                     .frame(width: 300, height:60 ))
                 .font(.body)
                 .foregroundColor(Color.gradiant)
            }
        }
    }




struct ShowView6: PreviewProvider {
    static var previews: some View {
        SwiftUIView6()
    }
}
