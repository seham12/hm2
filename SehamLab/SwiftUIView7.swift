//
//  SwiftUIView7.swift
//  SehamLab
//
//  Created by Seham almarshedi
//

import SwiftUI
struct SwiftUIView7: View {
    var body: some View {
        VStack{
            
            Text("Sign UP")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
                .foregroundColor(Color.black)
                .padding()
                .multilineTextAlignment(.center)
                .padding()
           // Spacer()
            
            
            Text("James Schlei")
                .font(.body)
                .foregroundColor(Color.gray)
                .background(RoundedRectangle(cornerRadius:30)
                    .frame(width: 300, height:60 ))
                .foregroundColor(Color.gradiant)
                //.padding()
            Spacer()
            
            Text("James Schleifer@gmail@com")
                            .font(.body)
                            .foregroundColor(Color.gray)
                            .background(RoundedRectangle(cornerRadius:30)
                                .frame(width: 300, height:60 ))
                            .foregroundColor(Color.gradiant)
                            .padding()
                        Spacer()
                        
            Text("Entry your Password")
                .font(.body)
                .foregroundColor(Color.gray)
                .background(RoundedRectangle(cornerRadius:30)
                    .frame(width: 300, height:60 ))
                .foregroundColor(Color.gradiant)
                .padding()
            Text ("I agree to the medidoc Terms of Service and Privacy Policy")
                .foregroundColor(Color.gray)

            
            Text("Sign Up")
                .font(.body)
                .foregroundColor(Color.white)
            .background(RoundedRectangle(cornerRadius:30)
                    .frame(width: 300, height:60 ))
                .font(.body)
                .foregroundColor(Color.color)
                .padding(50)
    Text("Don't have an account? Sine Up")
                .foregroundColor(.gray)
        }}}
struct ShowView7: PreviewProvider {
  static var previews: some View {
     SwiftUIView7()
   }
}
