//
//  SignInScreen.swift
//  Module5_Task7
//
//  Created by macbro on 26/04/22.
//

import SwiftUI

struct SignInScreen: View {
    
    @State var userId = ""
    @State var userPW = ""
    
    @State var signUp = false
    
    @EnvironmentObject var statusApp:StatusApp
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 10, content: {
                Spacer()
                Image("image2")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                    .shadow(color: .black.opacity(0.3), radius: 2, x: 2, y: 2)
                TextField("User ID", text: $userId)
                    .frame(height:45)
                    .padding(.leading,10)
                    .background(.gray.opacity(0.2))
                    .cornerRadius(25)
                    .font(.system(size: 16))
                
                SecureField("User PW", text: $userPW)
                    .frame(height:45)
                    .padding(.leading,10)
                    .background(.gray.opacity(0.2))
                    .cornerRadius(25)
                    .font(.system(size: 16))
                   
                Button(action: {
                    UserDefaults.standard.set("email@gmail.com", forKey: "userId")
                    statusApp.listener()
                }, label: {
                    HStack {
                        Spacer()
                        Text("SignIn")
                            .frame(height:45)
                            .font(.system(size: 16))
                            .foregroundColor(.white)
                        Spacer()
                    }
                })
                .background(.red)
                .cornerRadius(25)
                Spacer()
                HStack{
                    Text("Don't have account?")
                        .foregroundColor(.blue)
                        .font(.system(size: 16))
                    Button(action: {
                        signUp = true
                    }, label: {
                        NavigationLink(destination: SignUpScreen(), label: {
                            Text("SignUp")
                                .foregroundColor(.blue)
                                .font(.system(size: 18))
                        })
                    })
                }
            })
            .navigationBarTitle("Instagram",displayMode: .inline)
            .padding()
        }
    }
}

struct SignInScreen_Previews: PreviewProvider {
    static var previews: some View {
        SignInScreen()
            .environmentObject(StatusApp())
    }
}
