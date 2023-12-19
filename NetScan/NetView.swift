//
//  NetView.swift
//  NetScan
//
//  Created by Martin Martinez on 19/12/23.
//

import SwiftUI

struct NetView: View {
    @State var ip: String = ""
    
    var body: some View {
        Text("NetScan")
            .font(.largeTitle)
            .bold()
        
        HStack {
            Text("IP address")
            TextField("IP address to scan", text: $ip)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.numberPad)
        }
    }
}

#Preview {
    ContentView()
}
