//
//  HomePresenScreen.swift
//  Module5_Task7
//
//  Created by macbro on 26/04/22.
//

import SwiftUI

struct HomePresenScreen: View {
    var body: some View {
        NavigationView {
            Button(action: {
                UserDefaults.standard.set(false, forKey: "status")
                NotificationCenter.default.post(name: Notification.Name("status"), object: nil)
                
            }, label: {
                Text("LogOut")
                    .foregroundColor(.red)
                    .font(.system(size: 18))
            }).navigationBarTitle("Instagram",displayMode: .inline)
                .navigationBarItems(leading:
                   Image(systemName: "camera")
                    .foregroundColor(.red),
                 trailing: Image(systemName: "location")
                    .foregroundColor(.red))
        }
    }
}

struct HomePresenScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomePresenScreen()
    }
}
