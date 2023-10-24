//
//  SwiftUIView1.swift
//  SehamLab
//
//  Created by Seham almarshedi on 07/04/1445 AH.
//

import SwiftUI
struct SwiftUIView1: View {
    var body: some View {
    
        
        VStack(alignment: .center, spacing: 36.0) {
                    
            Image(systemName: "house")
                .resizable()
               // .foregroundColor(Color.white)
                .frame(width: 100, height: 100)
                
                
        
                    Text("Swift  معسكر ").font(.system(size: 50))
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
                
                    //Color.green.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                  }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.color)
    }
       
        //Spacer()
        //.background(Color.green
        //.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/))
        
       
    }
        //}
  
#Preview {
    SwiftUIView1()
}
struct ShowView1: PreviewProvider {
  static var previews: some View {
     SwiftUIView1()
   }
}
