//
//  NetView.swift
//  NetScan
//
//  Created by Martin Martinez on 19/12/23.
//

import SwiftUI

struct NetView: View {
    
    @ObservedObject var viewModel = NetViewModel()
    
    @State var ip: String = ""
    
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
                .keyboardType(.numbersAndPunctuation)
        }
        
        Divider()
            .padding(.bottom)
        
        Button {
            //code logic
        } label: {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 100, height: 40)
                .foregroundStyle(Color.purple)
                .overlay(
                    Text("SCAN")
                        .foregroundStyle(Color.white)
                        .bold()
                        .font(.title2)
                )
        }
        
        ResultsView(openPorts: viewModel.response.portNumbers, ipToScan: ip)
    }
}

#Preview {
    ContentView()
}
