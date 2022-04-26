//
//  StartPresenScreen.swift
//  Module5_Task7
//
//  Created by macbro on 26/04/22.
//

import SwiftUI

struct StartPresenScreen: View {
    
    @State var status = UserDefaults.standard.value(forKey: "status") as? Bool ?? false
    
    var body: some View {
        VStack {
            if self.status {
                HomePresenScreen()
            }else{
                SignInPresenScreen()
            }
        }.onAppear{
            let name = NSNotification.Name("status")
            NotificationCenter.default.addObserver(forName: name, object: nil, queue: .main){ (_) in
                self.status = UserDefaults.standard.value(forKey: "status") as? Bool ?? false
            }
        }
    }
}

struct StartPresenScreen_Previews: PreviewProvider {
    static var previews: some View {
        StartPresenScreen()
    }
}
