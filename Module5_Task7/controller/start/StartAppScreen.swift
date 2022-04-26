//
//  StartAppScreen.swift
//  Module5_Task7
//
//  Created by macbro on 26/04/22.
//

import SwiftUI

struct StartAppScreen: View {
    
    @EnvironmentObject var statusApp:StatusApp
    
    var body: some View {
        if statusApp.userId != nil {
            HomeScreen()
        } else {
            SignInScreen()
        }
    }
}

struct StartAppScreen_Previews: PreviewProvider {
    static var previews: some View {
        StartAppScreen()
            .environmentObject(StatusApp())
    }
}
