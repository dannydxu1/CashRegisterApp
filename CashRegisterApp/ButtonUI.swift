//
//  ButtonUI.swift
//  CashRegisterApp
//
//  Created by 90308209 on 2/24/22.
// not using

import SwiftUI

struct ButtonUI: View {
    @Binding var twentyBillCount: Int
    
    var body: some View {
        HStack {
            Button {
                if twentyBillCount > 1 {
                    twentyBillCount -= 1
                }
            } label: {
                Image(systemName: "minus.circle")
                    .foregroundColor(.pink)
                    .font(.system(.title, design:
                                        .rounded))
            }
            Button {
                twentyBillCount += 1
            } label : {
                Image (systemName : "plus.circle")
                    .foregroundColor(.pink)
                    .font(.system(.title, design:
                                        .rounded))
             
            }
        }
    }
}

struct ButtonUI_Previews: PreviewProvider {
    static var previews: some View {
        ButtonUI(twentyBillCount: .constant(1))
    }
}
