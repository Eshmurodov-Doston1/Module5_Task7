//
//  StatusApp.swift
//  Module5_Task7
//
//  Created by macbro on 26/04/22.
//

import Foundation
import Combine

class StatusApp:ObservableObject {
    var didChange = PassthroughSubject<StatusApp,Never>()
    @Published var userId:String? {didSet {self.didChange.send(self)}}
    
    func listener(){
        if let userId = UserDefaults.standard.string(forKey: "userId") {
            self.userId = userId
        }else{
            self.userId = nil
        }
    }
}
