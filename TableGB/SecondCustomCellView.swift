//
//  SecondCustomCellView.swift
//  TableGB
//
//  Created by Вадим Эйхольс on 30.01.2024.
//

import SwiftUI

struct SecondCustomCellView: View {
    let winPercentage: Double
    let lossPercentage: Double
    let returnPercentage: Double

    init(winPercentage: Double, lossPercentage: Double, returnPercentage: Double) {
        self.winPercentage = winPercentage
        self.lossPercentage = lossPercentage
        self.returnPercentage = returnPercentage
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Средний коэффициент:")
                .font(.headline)

    
            SecondProgressBar(value: winPercentage, color: Color.green, label: "Выигрыш")

   
            SecondProgressBar(value: lossPercentage, color: Color.red, label: "Проигрыш")

            
            SecondProgressBar(value: returnPercentage, color: Color.gray, label: "Возврат")
        }
        
    }
}

struct SecondProgressBar: View {
    var value: Double
    var color: Color
    var label: String

    var body: some View {
        HStack {
            ZStack(alignment: .leading) {
                Rectangle()
                    .foregroundColor(Color.gray.opacity(0.2))
                    .frame(height: 10)

                Rectangle()
                    .foregroundColor(color)
                    .frame(width: CGFloat(value * 100), height: 10)
            }

            Spacer()

            Text(label)
                .font(.subheadline)
                .foregroundColor(.gray)
                .frame(width: 100, alignment: .leading)

            Spacer()

            Text(String(format: "%.2f", value))
                .font(.subheadline)
        }
    }
}

struct SecondCustomCellView_Previews: PreviewProvider {
    static var previews: some View {
        SecondCustomCellView(winPercentage: 0.21, lossPercentage: 0.21, returnPercentage: 0.21)
    }
}
