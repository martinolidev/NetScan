//
//  ResultsView.swift
//  NetScan
//
//  Created by Martin Martinez on 19/12/23.
//

import SwiftUI

struct ResultsView: View {
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
    }
}

#Preview {
    ContentView()
}
