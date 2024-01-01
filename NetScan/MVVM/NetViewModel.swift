//
//  NetViewModel.swift
//  NetScan
//
//  Created by Martin Martinez on 31/12/23.
//

import Foundation

class NetViewModel: ObservableObject {
    @Published var response: portContent
    
    init() {
        response = portContent(portNumbers: ["8080"])
    }
    
    let model = NetModel()
    
    func makeRequest() {
        response = model.sendInformation(ip: "192.168.1.147")
    }
}
