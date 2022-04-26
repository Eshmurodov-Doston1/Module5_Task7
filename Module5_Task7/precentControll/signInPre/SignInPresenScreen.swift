//
//  SignInPresenScreen.swift
//  Module5_Task7
//
//  Created by macbro on 26/04/22.
//

import SwiftUI

struct SignInPresenScreen: View {
    
    @State var userId = ""
    @State var userPW = ""
    @State var isModel = false

    
    
    var body: some View {
        VStack(alignment: .center, spacing: 10, content: {
            Spacer()
            Image("image2")
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
            TextField("User ID", text: $userId)
                .frame(height:45)
                .padding(.leading,10)
                .background(.gray.opacity(0.2))
                .cornerRadius(45)
            SecureField("User PW", text: $userPW)
                .frame(height:45)
                .padding(.leading,10)
                .background(.gray.opacity(0.2))
                .cornerRadius(45)
            
            Button(action: {
                UserDefaults.standard.set(true, forKey: "status")
                NotificationCenter.default.post(name: Notification.Name("status"), object: nil)
            }, label: {
                Spacer()
                Text("SignIn")
                    .foregroundColor(.white)
                    .font(.system(size: 18))
                Spacer()
            })
            .frame(height:45)
            .background(.red)
            .cornerRadius(25)
            
            Spacer()
            HStack {
                Text("Don't have an account?")
                    .foregroundColor(.blue)
                Button(action: {
                    isModel = true
                }, label: {
                    Text("SignUp")
                        .foregroundColor(.blue)
                        .font(.system(size: 18))
                })
                .sheet(isPresented: $isModel, content: {
                    SignUpPresenScreen()
                })
            }
        }).padding()
    }
}

struct SignInPresenScreen_Previews: PreviewProvider {
    static var previews: some View {
        SignInPresenScreen()
    }
}
