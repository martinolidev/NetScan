//
//  NetModel.swift
//  NetScan
//
//  Created by Martin Martinez on 31/12/23.
//

import Foundation
import Alamofire

struct portContent: Codable {
    var ports: [String]
}

class NetModel {
    
    var portInformation: portContent
    //Change this IP to your server IP with my API
    var url: String = "http://127.0.0.1:8080"
    
    init () {
        portInformation = portContent(ports: ["8080"])
    }
    
    func sendInformation() -> portContent {
        AF.request(url, method: .get).validate(statusCode: 200...299).responseDecodable(of: portContent.self) {
            response in
            
            if let content = response.value {
                self.portInformation = portContent(ports: content.ports)
            } else {
                print(response.error?.responseCode ?? "No code error")
            }
        }
        
        return portInformation
    }
    
}
