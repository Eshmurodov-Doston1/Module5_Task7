//
//  SignUpPresenScreen.swift
//  Module5_Task7
//
//  Created by macbro on 26/04/22.
//

import SwiftUI

struct SignUpPresenScreen: View {
    @State var fullname = ""
    @State var lastname = ""
    @State var email = ""
    @State var address = ""
    @State var password = ""
    
    @Environment(\.presentationMode) var presenTation
    
    var body: some View {
        VStack(alignment: .center, spacing: 12, content: {
            Spacer()
            TextField("Fullname", text: $fullname)
                .frame(height:45)
                .padding(.leading,10)
                .background(.gray.opacity(0.2))
                .cornerRadius(25)
            
            TextField("Lastname", text: $lastname)
                .frame(height:45)
                .padding(.leading,10)
                .background(.gray.opacity(0.2))
                .cornerRadius(25)
            TextField("Email", text: $email)
                .frame(height:45)
                .padding(.leading,10)
                .background(.gray.opacity(0.2))
                .cornerRadius(25)
            TextField("Address", text: $address)
                .frame(height:45)
                .padding(.leading,10)
                .background(.gray.opacity(0.2))
                .cornerRadius(25)
            TextField("Password", text: $password)
                .frame(height:45)
                .padding(.leading,10)
                .background(.gray.opacity(0.2))
                .cornerRadius(25)
            
            Button(action: {
                
            }, label: {
                Spacer()
                Text("SignUp")
                    .font(.system(size: 18))
                    .foregroundColor(.white)
                Spacer()
            })
            .frame(height:45)
            .background(.red)
            .cornerRadius(25)
            Spacer()
            HStack {
                Text("Already have an account?")
                    .foregroundColor(.blue)
                Button(action: {
                    presenTation.wrappedValue.dismiss()
                }, label: {
                    Text("SignIn")
                        .foregroundColor(.blue)
                        .font(.system(size: 18))
                })
            }
        }) .padding()
    }
}

struct SignUpPresenScreen_Previews: PreviewProvider {
    static var previews: some View {
        SignUpPresenScreen()
    }
}
