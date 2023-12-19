//
//  ResultsView.swift
//  NetScan
//
//  Created by Martin Martinez on 19/12/23.
//

import SwiftUI

struct ResultsView: View {
    let openPorts: [String] = ["80", "443", "8080", "22"]
    
    var body: some View {
        Divider()
            .padding(.vertical)
        
        HStack(spacing: 50) {
            Text("Results for")
                .bold()
                .font(.title)
            Text("192.168.1.1")
                .font(.title)
        }.padding(.bottom)
        
        
        HStack(spacing: 100) {
            Text("PORTS")
            Text("STATUS")
        }
        .bold()
        .padding(.bottom)
        .font(.title3)
        
        HStack(spacing: 100) {
            VStack(spacing: 15) {
                ForEach(openPorts, id: \.self) { port in
                    Text(port)
                }
            }
            VStack (spacing: 15) {
                ForEach(openPorts, id: \.self) { port in
                    Text("OPEN")
                }
            }
        }
        .font(.system(size: 20))
        
        Spacer()
    }
}

#Preview {
    ContentView()
}
