//
//  SignUpScreen.swift
//  Module5_Task7
//
//  Created by macbro on 26/04/22.
//

import SwiftUI

struct SignUpScreen: View {
    
    @State var fullName = ""
    @State var lastName = ""
    @State var email = ""
    @State var address = ""
    @State var password = ""

    var body: some View {
        VStack {
            Spacer()
            TextField("Fullname", text: $fullName)
                .foregroundColor(.black)
                .frame(height:45)
                .padding(.leading,10)
                .background(.gray.opacity(0.2))
                .cornerRadius(25)
            
            TextField("Lastname", text: $lastName)
                .foregroundColor(.black)
                .frame(height:45)
                .padding(.leading,10)
                .background(.gray.opacity(0.2))
                .cornerRadius(25)
            
            TextField("Email", text: $email)
                .foregroundColor(.black)
                .frame(height:45)
                .padding(.leading,10)
                .background(.gray.opacity(0.2))
                .cornerRadius(25)
            
            TextField("Address", text: $address)
                .foregroundColor(.black)
                .frame(height:45)
                .padding(.leading,10)
                .background(.gray.opacity(0.2))
                .cornerRadius(25)
            SecureField("Password", text: $password)
                .foregroundColor(.black)
                .frame(height:45)
                .padding(.leading,10)
                .background(.gray.opacity(0.2))
                .cornerRadius(25)
            
            Button(action: {
                
            }, label: {
                Spacer()
                Text("SignUp")
                    .foregroundColor(.white)
                Spacer()
            })
                .frame(height:45)
                .background(.red)
                .cornerRadius(25)
            Spacer()
            HStack{
                Text("Already have an account?")
                Button(action: {
                    
                }, label: {
                  
                    Text("SignIn")
                        .foregroundColor(.blue)
                        .font(.system(size: 18))
                })
            }
            
        }
        .padding()
    }
}

struct SignUpScreen_Previews: PreviewProvider {
    static var previews: some View {
        SignUpScreen()
    }
}
