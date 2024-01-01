//
//  NetModel.swift
//  NetScan
//
//  Created by Martin Martinez on 31/12/23.
//

import Foundation
import Alamofire

struct portContent: Codable {
    var portNumbers: [String]
}

class NetModel {
    
    var portInformation: portContent
    //Change this IP to your server IP with my API
    var url: String = "http://192.168.1.147:8080/ip/"
    
    init () {
        portInformation = portContent(portNumbers: ["8080"])
    }
    
    func sendInformation(ip: String) -> portContent {
        AF.request(url, method: .get).validate(statusCode: 200...299).responseDecodable(of: portContent.self) {
            response in
            
            if let content = response.value {
                self.portInformation = portContent(portNumbers: content.portNumbers)
            } else {
                print(response.error?.responseCode ?? "No code error")
            }
        }
        
        return portInformation
    }
    
}
