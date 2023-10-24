//
//  SwiftUIView4.swift
//  SehamLab
//
//  Created by Seham almarshedi 
//

import SwiftUI

struct SwiftUIView8: View {
    var body: some View {
        
        Image("sign up")
        //.resizable()
            .opacity(0.4)
        
        VStack{
            
            RoundedRectangle(cornerRadius: 24)
                .frame(width:100, height: 100)
                .foregroundColor(Color("ForText"))
                .padding()
            
            
            
            Circle()
                .frame(width: 1300, height: 130)
                .foregroundColor(.gray)
                .opacity(0.5 )
                .padding(.top)
            Image(systemName: "checkmark.seal")
                .resizable()
                .scaledToFit()
            
            
            Text("Success")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.black)
            
            Text("Your account has been successfully regested")
                .padding()
                .font(.footnote)
                .foregroundColor(.gray)
            
        }
    }
    
    struct ShowView8: PreviewProvider {
        static var previews: some View {
            SwiftUIView8()
        }}
}
