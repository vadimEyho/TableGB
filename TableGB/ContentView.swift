//
//  ContentView.swift
//  TableGB
//
//  Created by Вадим Эйхольс on 30.01.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                
                SecondCustomCellView(winPercentage: 1.94, lossPercentage: 2.17, returnPercentage: 1.26)
                
                    CustomBettingCell(
                        bookmakerImage: Image("bwin"),
                        totalBets: 100,
                        winPercentage: 0.6,
                        lossPercentage: 0.2,
                        returnPercentage: 0.2
                    )
                
                
            }
    
            .navigationBarTitle("Детали", displayMode: .large)
            
            .listStyle(PlainListStyle())
        }
    }
}


#Preview {
    ContentView()
}
