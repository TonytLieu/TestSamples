//
//  PhoneLogin.swift
//  TestSamplePhoneLogin
//
//  Created by Tony Lieu on 12/11/23.
//

import SwiftUI
import FirebaseAuth
//this is for to Turn this to VIP
protocol phoneNumberLogin{
    func SignIn()
    func SignUP()
}
struct PhoneLogin: View {
    @State var phoneNumeber:String = ""
    //  var delegate = phoneNumberLogin()
    var body: some View {
        NavigationStack{
            Text("People")
                .font(.largeTitle)
                .padding(130)
            
            TextField("Enter Your Phone Number...", text: $phoneNumeber)
                .textFieldStyle(.roundedBorder)
                .frame(width: 350, height: 25)
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                .padding()
            Spacer()
            
            NavigationLink("Sign In"){
                //check if the number can be send too
//                AuthManager.shared.startAuth(phoneNumber: phoneNumeber) { sof in
//                    if(sof){
//                        SignInOnSucessOrFail(sof)
//                    }
//                    else{
//                        NoNumberFound()
//                    }
//                }
            }
            .font(.system(.title, design: .none)).shadow(radius: 10)
            .frame(width: 330.0, height: 45.0)
            .background(Color(red: 1, green: 1, blue: 1))
            .clipShape(Rectangle())
            .foregroundColor(.black)
            .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .hoverEffect()
        }
        .padding()
    }
}
#Preview {
    PhoneLogin()
}
