//
//  ResultsView.swift
//  NetScan
//
//  Created by Martin Martinez on 19/12/23.
//

import SwiftUI

struct ResultsView: View {
    let openPorts: [String] 
    let ipToScan: String
    
    var body: some View {
        Divider()
            .padding(.vertical)
        
        HStack(spacing: 50) {
            Text("Results for")
                .bold()
                .font(.title)
            Text(ipToScan)
                .font(.system(size: 20))
        }.padding(.bottom)
        
        
        HStack(spacing: 100) {
            Text("PORTS")
            Text("STATUS")
        }
        .bold()
        .padding(.bottom)
        .font(.title3)
        
        ScrollView() {
            HStack(spacing: 100) {
                VStack(spacing: 15) {
                    ForEach(openPorts, id: \.self) { port in
                        Text(port)
                    }
                }
                VStack (spacing: 15) {
                    ForEach(openPorts, id: \.self) { port in
                        Text("OPEN")
                            .foregroundStyle(Color.green)
                            .bold()
                    }
                }
            }
            .font(.system(size: 20))
        }
        
        Spacer()
        
        Text("The developer of this software Martin Martinez Alvarez is not responsible for any misuse or damage caused by this application. Users are advised to use it ethically and legally, and it is their responsibility to comply with all applicable laws and regulations.")
            .font(.caption2)
            .foregroundStyle(Color.gray)
    }
}

#Preview {
    ContentView()
}
