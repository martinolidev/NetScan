//
//  NetModel.swift
//  NetScan
//
//  Created by Martin Martinez on 31/12/23.
//

import Foundation

struct portResponse: Codable {
    var ports = [String]()
}

class NetModel {
    
    var portInformation: portResponse
        
    init () {
        portInformation = portResponse(ports: ["8080"])
    }
    
}
