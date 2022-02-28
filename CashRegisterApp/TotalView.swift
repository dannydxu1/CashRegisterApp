//
//  TotalView.swift
//  CashRegisterApp
//
//  Created by 90308209 on 2/25/22.
//

import SwiftUI

struct TotalView: View {
    var moneyMoneyMoney = 0.0
    let skyBlue = Color(red: 0.4627, green: 0.8392, blue: 1.0)
    var body: some View {
        VStack {
        Text("Total Money in Register: $\(moneyMoneyMoney, specifier: "%.2f")")
            .foregroundColor(skyBlue)
            .font(.subheadline)
            .fontWeight(.regular)
            let newTotal = moneyMoneyMoney-150
        Text("Total Money -$150: $\(newTotal, specifier: "%.2f")")
                .foregroundColor(skyBlue)
                .font(.subheadline)
                .fontWeight(.regular)
        }
    }
}

struct TotalView_Previews: PreviewProvider {
    static var previews: some View {
        TotalView()
    }
}
