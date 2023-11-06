//
//  SwiftUIView9.swift
//  SehamLab
//
//  Created by Seham almarshedi
//

import SwiftUI

struct Success
: View {
    @State private var name = ""
    @State private var email = ""
    @State private var password = ""
    @State private var image = ""
    
    var body: some View {
        
        NavigationStack{
            
            ScrollView{
                
                VStack(spacing:20){
                    
                    VStack(spacing:20){
                        Text("Sign UP")
                            .font(.title)
                            .fontWeight(.bold)
                            .padding(.bottom, 20)
                        
                        TextField("Enter your name", text: $name)
                            .frame(width:300 , height: 30)
                            .padding()
                            .background(Color.gradiant)
                            .cornerRadius(30)
                            .background(RoundedRectangle(cornerRadius: 30)
                                .stroke(Color.gray, lineWidth: 1))
                        
                        
                        //  Image(systemName: "envelope.fill")
                        TextField("Enter your email", text: $email)
                            .frame(width:300 , height: 30)
                            .padding()
                            .background(Color.gradiant)
                            .cornerRadius(30)
                            .background(RoundedRectangle(cornerRadius: 30)
                                .stroke(Color.gray, lineWidth: 1))
                        
                        
                        
                        SecureField("Enter your password", text: $password)
                        // .textFieldStyle()
                            .frame(width:300 , height: 30)
                            .padding()
                            .background(Color.gradiant)
                            .cornerRadius(30)
                            .background(RoundedRectangle(cornerRadius: 30)
                                .stroke(Color.gray, lineWidth: 1)
                            )
                        
                    }
                    
                    
                    
                    Button(action: {
                        // Handle login logic here
                    }) {
                        Image(systemName: "square")
                            .padding(.bottom,25)
                            .foregroundColor(.gray)
                        
                        Text ("I agree to the medidoc [Terms of Service](https://discord) and [Privacy Policy](https://discord)")
                            .foregroundColor(Color.black)
                    }
                    
                    .padding(.trailing)
                    
                    
                    ZStack{
                        
                        Text("Sign UP")
                            .bold()
                            .foregroundColor(.white)
                        
                            .frame(width: 300, height: 60)
                            .background(RoundedRectangle(cornerRadius: 30)
                                        //.stroke(Color.color, lineWidth: 1)
                                .foregroundColor(Color.color)
                            )
                    }
                    
                    
                    HStack{
                        Text("Don't have an account ?")
                            .foregroundStyle(.gray)
                        Button(action: {
                        }) {
                            Text("Sign Up")
                                .foregroundColor(.color)
                        }
                        
                    } .padding()
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
                    Text("Your account has been succesfully registered")
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
            
            
            
            
            
            
        }
    }
    



#Preview {
   Success()
}
