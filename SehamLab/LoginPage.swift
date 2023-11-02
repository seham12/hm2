//
//  SwiftUIView1.swift
//  SehamLab
//
//  Created by Seham almarshedi on 17/04/1445 AH.
//

import SwiftUI

struct LoginPage: View {
  
@State private var email = ""
@State private var password = ""
@State private var image = ""
@State private var passwordError = ""

        var body: some View {
            
            NavigationStack{
                
                ScrollView{
                    
                    VStack(spacing:20){
                        
                        VStack(spacing:20){
                            Text("Login")
                                .font(.title)
                                .fontWeight(.bold)
                                .padding(.bottom, 20)
                            
                            
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
                            .stroke(passwordError.isEmpty ? .black : .red ,lineWidth: 1)

                                    
                                )
                            
                        }
                        
                        
                       
                        Button(action: {
                            // Handle login logic here
                        }) {
                            Text("Forgot Password?")
                                .foregroundColor(.color)
                        }
                        
                        .padding(.leading,200)
                        .padding(.bottom)
                        
                       
                        Button(action: {
                            print("Email: \(email)")
                            print("Password: \(password)")
                        }) {
                            Text("Login")
                                .font(.title2).bold()
                        }
                       .frame(width:300 , height: 30)
                       // .frame(minWidth: 0, maxWidth: .infinity)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.color)
                        .foregroundColor(.white)
                        .cornerRadius(30)
                        
                        
                        
                        HStack{
                            Text("Don't have an account ?")
                                .foregroundStyle(.gray)
                            Button(action: {
                            }) {
                                Text("Sign Up")
                                    .foregroundColor(.color)
                            }
                            
                        } .padding()
                        
                        
                        ZStack{
                            Divider()
                                .frame(width: 135)
                                .padding(.trailing,200)
                            Text("OR")
                                .foregroundStyle(.gray)
                            Divider()
                                .frame(width: 135)
                                .padding(.leading,200)
                        }
                        
                        
                        
                        VStack(spacing: 15){
                            
                            Button(action:{}, //@START_MENU_TOKEN@/,{}/@END_MENU_TOKEN@/,
                                   label: {
                                
                                ZStack{
                                    Image(systemName: "envelope.circle.fill")
                                        .resizable()
                                        .frame(width:35, height: 35)
                                        .padding(.trailing , 300)
                                    Text("Sign in with Google")
                                        .foregroundColor(.black).bold()
                                        .padding()
                                        .frame(width:350 , height: 60)

                                    //.frame(minWidth: 0, maxWidth: .infinity)
                                        .background(RoundedRectangle(cornerRadius: 30)
                                            .stroke(Color.gray, lineWidth: 1)
                                                    
                                        )
                                }
                                
                            }
                            )
                            
                            
                            
                            Button(action:{}, //@START_MENU_TOKEN@/,{}/@END_MENU_TOKEN@/,
                                   label: {
                                
                                
                                ZStack{
                                    
                                    Image(systemName: "apple.logo")
                                        .resizable()
                                        .foregroundColor(Color.black)
                                        .frame(width:30, height: 30)
                                        .padding(.trailing , 300)
                                    Text("Sign in with Apple")
                                        .foregroundColor(.black).bold()
                                        .padding()
                                        .frame(width:350 , height: 60)
                                       // .frame(minWidth: 0, maxWidth: .infinity)
                                        .background(RoundedRectangle(cornerRadius: 30)
                                            .stroke(Color.gray, lineWidth: 1)
                                                    
                                        )
                                }
                                
                            }
                            )
                            
                            Button(action:{}, //@START_MENU_TOKEN@/,{}/@END_MENU_TOKEN@/,
                                   label: {
                                
                                
                                ZStack{
                                    
                                    Image(systemName: "f.circle")
                                        .resizable()
                                        .frame(width:30, height: 30)
                                        .padding(.trailing , 300)
                                    Text("Sign in with Facebook")
                                        .foregroundColor(.black).bold()
                                        .padding()
                                        .frame(width:350 , height: 60)
                                        //.frame(minWidth: 0, maxWidth: .infinity)
                                        .background(RoundedRectangle(cornerRadius: 30)
                                        .stroke(Color.gray, lineWidth: 1))
                                }
                                
                            }
                            ) }
                    } }}}}
    
#Preview {
    LoginPage()
}
