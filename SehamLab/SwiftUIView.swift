//
//  SwiftUIView.swift

//  SehamLab
//
//  Created by Seham almarshedi on 08/04/1445 AH.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {VStack(alignment: .center, spacing: 50.0) {
        
        Image(systemName: "house")
            .resizable()
            
        
    
                Text("swift  معسكر ").font(.system(size: 50))
            .font(.title)
            .fontWeight(.bold)
            .foregroundColor(.color)
        Text("Let's get started!")
            .font(.title)
        //font(.largeTitle)
        .fontWeight(.bold)
        .foregroundColor(.black)
        .multilineTextAlignment(.center)
        //.frame(maxWidth: .infinity, maxHeight: .infinity)
        Text("Login to enjoy the features we've provide , and stay healthy!" )
                    .foregroundColor(Color.gray)
                    .multilineTextAlignment(.center)
        Text("Logine")
            .font(.body)
            .foregroundColor(Color.white)
        

            //.frame(width: 100.0, height: 100.0)
            .background(RoundedRectangle(cornerRadius:30)
                .frame(width: 300, height:60 ))
            .foregroundColor(Color.color)
           
        Text("sgin up")
            .font(.body)
            .foregroundColor(Color.color)
            //.frame(width: 100.0, height: 100.
    
        
            .background(RoundedRectangle(cornerRadius:30)
                .frame(width: 300, height: 50)
                .border(Color.color)

                
                    )
            .foregroundColor(Color.white)
            

            
              }
    
    }
}

//#Preview {
   // SwiftUIView()
//
//struct ShowView: PreviewProvider {
 // static var previews: some View {
    // SwiftUIView()
   
//}}
