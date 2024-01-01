//
//  NetViewModel.swift
//  NetScan
//
//  Created by Martin Martinez on 31/12/23.
//

import Foundation

class NetViewModel: ObservableObject {
    @Published var response: portContent
    @Published var ip: String
    
    init() {
        response = portContent(portNumbers: ["Scan a device"])
        ip = "127.0.0.1"
    }
    
    let model = NetModel()
    
    func makeRequest(ip: String) {
        response = model.sendInformation(ip: ip)
    }
}
