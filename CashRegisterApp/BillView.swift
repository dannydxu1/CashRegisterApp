//
//  BillView.swift
//  CashRegisterApp
//
//  Created by 90308209 on 2/23/22.
//

import SwiftUI

struct BillView: View {
    var billName = "" //"20$"
    var subtotalAmt = 1.01
    var billQty = 1.0
   
    @Binding var temp: Double //x
    
    var body: some View {
        VStack {
            
            ZStack {
                Rectangle()
                    .foregroundColor(.indigo)
                Spacer()
                HStack {
                    Button {
                            temp += 1
                    } label: {
                    Text(billName)
                            .foregroundColor(.white)
                    }
                    let intBillQty = (Int)(billQty)
                Text("Qty: \(intBillQty)")
                    .foregroundColor(.white)
                    .font(.subheadline)
                    .fontWeight(.regular)
                }
                
            }
            Spacer()
            Button {
                if temp > 0 {
                    temp -= 1
                }
            } label: {
            Text("Subtotal: $\(subtotalAmt, specifier: "%.2f")")
                    .foregroundColor(.white)
                .font(.subheadline)
                .fontWeight(.regular)
            }
        }
    }
}

struct BillView_Previews: PreviewProvider {
    static var previews: some View {
        BillView(billName: "Blank", temp: .constant(1))
    }
}
