//
//  MenuManager.swift
//  MiniBankApp
//
//  Created by Zahra Alizada on 24.03.24.
//

import Foundation

class MenuManager {
    func printMenuList () {
        for (n, c) in MenuTypeEnum.allCases.enumerated() {
            print("\(n+1): '\(c)'")
        }
    }
}
