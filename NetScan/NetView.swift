//
//  NetView.swift
//  NetScan
//
//  Created by Martin Martinez on 19/12/23.
//

import SwiftUI

struct NetView: View {
    @State var ip: String = ""
    @State var ports: String = ""
    
    var body: some View {
        Text("NetScan")
            .font(.largeTitle)
            .bold()
        
        Divider()
            .padding(.bottom)
        
        HStack {
            Text("IP address")
            TextField("IP address to scan", text: $ip)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.numberPad)
        }
        
        HStack(spacing: 48){
            Text("Ports")
                .frame(alignment: .leading)
            TextField("All ports by the default", text: $ports)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.numberPad)
        }
    }
}

#Preview {
    ContentView()
}
