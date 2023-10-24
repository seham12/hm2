//
//  SwiftUIView2.swift
//  SehamLab
//
//  Created by Seham almarshedi on 07/04/1445 AH.
//

import SwiftUI
struct SwiftUIView2: View {
    var body: some View{
        VStack (spacing: 0) {
            Button("Skip"){}
                .frame(maxWidth: .infinity , alignment: .trailing)
                .foregroundColor(.gray)
                .padding()
            Image("women")
                .resizable()
                .frame(width: 350 , height:450)
            ZStack{
                RoundedRectangle(cornerRadius: 22)
                    .fill(
                        LinearGradient(colors: [Color("gradiant"), .clear],
                                       startPoint: .top,
                                       endPoint: .bottom)
                        
                    )
                VStack{
                    Text("Consult only with a doctor you trust")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    HStack (spacing: 10){
                        RoundedRectangle(cornerRadius: 22.0)
                            .frame(width: 30, height: 5)
                            .foregroundColor(.mint)
                            .opacity(0.2 )
                        RoundedRectangle(cornerRadius: 22.0)
                            .frame(width: 30, height: 5)
                            .foregroundColor(.mint)
                            .opacity(0.2 )
                        
                    Button(action: {
                        print("Round Action")
                    }) {
                        Image(systemName: "arrow.right")
                            .frame(width: 50, height: 50)
                            .foregroundColor(Color.white)
                            .background(Color("Color"))
                            .clipShape(Circle())
                            .frame(maxWidth: .infinity , alignment: .trailing)
                       
                            
                        }
                    }}
                
            }//: ZSTACK
            .padding(.horizontal)
                        }}}
        
                        
                        
                        
            
  
    
    
    //  #Preview {
    // SwiftUIView2()
    
    struct ShowView2 : PreviewProvider {
        static var previews: some View {
            SwiftUIView2()
        }}

