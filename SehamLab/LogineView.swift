//
//  SwiftUIView.swift

//  SehamLab
//
//  Created by Seham almarshedi on 08/04/1445 AH.
//

import SwiftUI

struct LogineView: View {
    var body: some View {VStack(alignment: .center, spacing: 50.0) {
        
        Image(systemName: "house")
            .resizable()
            .frame(width: 150, height: 150)
        
        
        
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
       
        
        Button(action:{}, //@START_MENU_TOKEN@/,{}/@END_MENU_TOKEN@/,
               label: {
            
            ZStack{
              
                Text("Logine")
                    .foregroundColor(.white)
                   
                    .frame(width: 300, height: 60)
                    .background(RoundedRectangle(cornerRadius: 30)
                        //.stroke(Color.color, lineWidth: 1)
                        .foregroundColor(Color.color)
                    )
            }
            
        }
        )
        
        //Text("Logine")
          //  .font(.body)
           // .foregroundColor(Color.white)
        
        
        //.frame(width: 100.0, height: 100.0)
            //.background(RoundedRectangle(cornerRadius:30)
               // .frame(width: 300, height:60 ))
           // .foregroundColor(Color.color)
        
        //Text("Sgin Up")
          //  .font(.body)
           // .foregroundColor(Color.color)
         //   .background(RoundedRectangle(cornerRadius:30)
              //  .frame(width: 300, height: 60)
            //    .border(Color.color))
        
        
           // .foregroundColor(Color.white)
       
        Button(action:{}, //@START_MENU_TOKEN@/,{}/@END_MENU_TOKEN@/,
               label: {
            
            ZStack{
              
                Text("Sign UP")
                    .foregroundColor(.color)
                    .frame(width: 300, height: 60)
                    .background(RoundedRectangle(cornerRadius: 30)
                        .stroke(Color.color, lineWidth: 1)
                                
                    )
            }
            
        }
        )
        

                
        }
        
    }
        
    }


#Preview {
    LogineView()
    
}
