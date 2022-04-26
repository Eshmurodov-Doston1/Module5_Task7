//
//  HomeScreen.swift
//  Module5_Task7
//
//  Created by macbro on 26/04/22.
//

import SwiftUI

struct HomeScreen: View {
    
    @EnvironmentObject var statusApp:StatusApp
    
    var body: some View {
        NavigationView {
            Button(action: {
                UserDefaults.standard.removeObject(forKey: "userId")
                statusApp.listener()
            }, label: {
                Text("LogOut")
            })
                .foregroundColor(.red)
                .navigationBarTitle("Instagram",displayMode: .inline)
                .navigationBarItems(
                    leading:
                    Image(systemName: "camera")
                        .foregroundColor(.red)
                    ,
                     trailing:
                    Image(systemName: "location")
                    .foregroundColor(.red))
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
            .environmentObject(StatusApp())
    }
}
