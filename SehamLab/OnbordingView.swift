//
//  OnbordingView.swift
//  SehamLab
//
//  Created by Seham almarshedi on 09/04/1445 AH.
//

import SwiftUI

struct OnbordingView: View {
    var body: some View {
        TabView {
            ContentView()
            
            SwiftUIView1()
            
            SwiftUIView2()
           
            SwiftUIView3()
          
            SwiftUIView5()
            
            SwiftUIView()
            
            SwiftUIView6()
    
            SwiftUIView7()
            
            SwiftUIView8()
            
            SwiftUIView9()
            
           
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        OnbordingView()
    }
}
      
