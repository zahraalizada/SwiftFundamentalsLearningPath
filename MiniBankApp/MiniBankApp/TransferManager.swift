//
//  TransferManager.swift
//  MiniBankApp
//
//  Created by Zahra Alizada on 24.03.24.
//

import Foundation

class TransferManager {
    func getTransferInfo () -> TransferInfo {
        print("Transfer ediləcək kartı daxil edin:")
        let transferCard = readLine() ?? ""
        print("Məbləği daxil edin:")
        let transferAmount = readLine() ?? ""
        
        return TransferInfo(transferCard: transferCard, transferAmount: transferAmount)
    }
}
