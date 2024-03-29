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
            
            HomeView()
            
            Doctor1View()
            
            Doctor2View()
            
            Doctor3View()
            
            LogineView()
            
            SignUp()
            
            Welcome()
            
            Success()
            
            ForgotPassword()
            
            ForgotPhone()
            
            VerificationeCode()
            
            CreatnNewPassword()
            
            _SuccessNewPassword()
            
            HomeViwe1()
            
            HomeView2()
            
            FindDoctors()
            
            DoctorDetail()
            
            Appointment()
            
            BookingDoctorSuccess_()
            
            ChatwithDoctor_()
            
            CallView()
            
            VidoeCall()
            
            ScheduleData()
            
            MessageHistory()
            
            Articles()
            
            Pharmacy()
            
            DrugsDetail()
            
            MyCart_()
            
            MyCart1()
            
            MapView()
            
            ProfileView()
            
            LogOut()
            
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
      
