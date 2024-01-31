//
//  graphСellTop.swift
//  TableGB
//
//  Created by Вадим Эйхольс on 30.01.2024.
//

import SwiftUI

struct CustomBettingCell: View {
    let bookmakerImage: Image
    let totalBets: Int
    let winPercentage: Double
    let lossPercentage: Double
    let returnPercentage: Double
    
  
    
    var body: some View {
            
            VStack(alignment: .leading, spacing: 5) {
                Text("Выигрыши/проигрыши по букмекерам")
                    .font(.headline)
                    
                
                HStack {
                    bookmakerImage
                        .resizable()
                        .frame(width: 70, height: 70)
                        .padding(.trailing, 8)
                    
                    Text("Ставок: \(totalBets)")
                        
                }
                
                HStack(spacing: 2) {
                    VStack {
                        Rectangle().frame(width: 350 * winPercentage, height: 10).foregroundStyle(Color(.green))
                        Text("\(winPercentage * 100, specifier: "%.0f")%(\(winPercentage * 100,specifier: "%.0f" ))")
                            .foregroundColor(.black)
                            .padding(.horizontal, 4)
                            .font(.system(size: 12))
                           
                    }
                    
                    VStack {
                        Rectangle().frame(width: 350 * lossPercentage, height: 10).foregroundStyle(Color(.red))
                        Text("\(lossPercentage * 100, specifier: "%.0f")%(\(lossPercentage * 100,specifier: "%.0f" ))")
                            .foregroundColor(.black)
                            .padding(.horizontal, 4)
                            .font(.system(size: 12))
                       
                    }
                    
                    VStack {
                        Rectangle().frame(width: 350 * returnPercentage, height: 10).foregroundStyle(Color(.gray))
                        Text("\(returnPercentage * 100, specifier: "%.0f")%(\(returnPercentage * 100,specifier: "%.0f" ))")
                            .foregroundColor(.black)
                            .padding(.horizontal, 4)
                            .font(.system(size: 12))
                     
                    }

                }
                    
                
                
            }.padding(.leading, 16)
            
                
            }
        }
    



struct CustomBettingCell_Previews: PreviewProvider {
    static var previews: some View {
        CustomBettingCell(
            bookmakerImage: Image(systemName: "bwin"), // Используйте вашу картинку букмекера
            totalBets: 100,
            winPercentage: 0.1,
            lossPercentage: 0.7,
            returnPercentage: 0.2
        )
    }
}
        
