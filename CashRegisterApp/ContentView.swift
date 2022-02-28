//
//  ContentView.swift
//  CashRegisterApp
//
//  Created by 90308209 on 2/23/22.
//

import SwiftUI

struct ContentView: View {
    @State private var numberof100Bills = 0.0
    @State private var numberof20Bills = 0.0
    @State private var numberof10Bills = 0.0
    @State private var numberof5Bills = 0.0
    @State private var numberof1Bills = 0.0
    @State private var numberofQtrBills = 0.0
    @State private var numberofDimeBills = 0.0
    @State private var numberofNickelBills = 0.0
    @State private var numberofPennyBills = 0.0
    
    private var hundredTotal: Double {
        return Double(numberof100Bills*100)
    }
    
    private var twentyTotal: Double {
        return Double(numberof20Bills*20)
    }
    private var tenTotal: Double {
        return Double(numberof10Bills*10)
    }
    private var fiveTotal: Double {
        return Double(numberof5Bills*15)
    }
    private var oneTotal: Double {
        return Double(numberof1Bills*1)
    }
    
    private var quarterTotal: Double {
        return Double(numberofQtrBills*0.25)
    }
    
    private var dimeTotal: Double {
        return Double(numberofDimeBills*0.10)
    }
    
    private var nickelTotal: Double {
        return Double(numberofNickelBills*0.05)
    }
    
    private var pennyTotal: Double {
        return Double(numberofPennyBills*0.01)
    }
    
    private var moneyTotal: Double {
        return twentyTotal+tenTotal+fiveTotal+oneTotal+quarterTotal+dimeTotal+nickelTotal+pennyTotal
    }
    
    var body: some View {
        VStack(spacing:20) {
            BillView(billName: "100$", subtotalAmt: hundredTotal, billQty: numberof100Bills, temp: $numberof100Bills)
            .frame(width: 100, height: 100)
            HStack(spacing:20) {
                BillView(billName: "20$", subtotalAmt: twentyTotal, billQty: numberof20Bills, temp: $numberof20Bills)
                .frame(width: 100, height: 100)
                BillView(billName: "10$", subtotalAmt: tenTotal, billQty: numberof10Bills, temp: $numberof10Bills)
                .frame(width: 100, height: 100)
            }
            HStack(spacing:20){
                BillView(billName: "5$", subtotalAmt: fiveTotal, billQty: numberof5Bills, temp: $numberof5Bills)
                .frame(width: 100, height: 100)
                BillView(billName: "1$", subtotalAmt: oneTotal, billQty: numberof1Bills, temp: $numberof1Bills)
                .frame(width: 100, height: 100)
            }
            HStack(spacing:20){
                BillView(billName: "25c", subtotalAmt: quarterTotal, billQty: numberofQtrBills, temp: $numberofQtrBills)
                .frame(width: 100, height: 100)
                BillView(billName: "10c", subtotalAmt: dimeTotal, billQty: numberofDimeBills, temp: $numberofDimeBills)
                .frame(width: 100, height: 100)
            }
            HStack(spacing:20){
                BillView(billName: "5c", subtotalAmt: nickelTotal, billQty: numberofNickelBills, temp: $numberofNickelBills)
                .frame(width: 100, height: 100)
                BillView(billName: "1c", subtotalAmt: pennyTotal, billQty: numberofPennyBills, temp: $numberofPennyBills)
                .frame(width: 100, height: 100)
            }
        }
        TotalView(moneyMoneyMoney: moneyTotal)
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
