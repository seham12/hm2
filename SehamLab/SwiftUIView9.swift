//
//  SwiftUIView9.swift
//  SehamLab
//
//  Created by Seham almarshedi
//

import SwiftUI

struct SwiftUIView9: View {
    var body: some View {
        
    
        VStack{
            
            Image("Login")
                .opacity(0.4)
            
            // .frame(maxWidth: .infinity, maxHeight: .infinity)
            //.background(."login")
            
            RoundedRectangle(cornerRadius: 22.0)
                .frame(width:100, height: 100)
                .foregroundColor(Color.white)
            
                .padding()
            
            VStack{
                
                Circle()
                    .frame(width: 1300, height: 130)
                    .foregroundColor(.gray)
                    .opacity(0.5 )
                    .padding(.top)
                Image(systemName: "checkmark.seal")
                    .resizable()
                    .scaledToFit()
            }
            
            Text("Yeay! Welcome Back")
                .font(.title)
                .fontWeight(.bold)
            
            Text("Once again you login successfully into medidoc app")
                .padding(8)
                .font(.footnote)
                .foregroundColor(.gray.opacity(0.7))
            
            Button(action: {}) {
                Text("Go To Home")
                    .fontWeight(.bold)
                    .padding(EdgeInsets(top: 12, leading: 50, bottom: 12, trailing: 50))
                    .foregroundColor(Color.white)
                    .background(Color.mint)
                    .cornerRadius(100)
            }
            
            
        }
    }
    
    struct ShowView9: PreviewProvider {
        static var previews: some View {
            SwiftUIView9()
        }}}
