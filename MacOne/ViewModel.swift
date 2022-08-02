//
//  ViewModel.swift
//  MacOne
//
//  Created by Federico on 02/08/2022.
//

import Foundation

struct RandNumber: Identifiable {
    let id = UUID()
    let number = Int.random(in: 0...100)
}

final class ViewModel: ObservableObject {
    @Published var number = 0
    @Published var numberList: [RandNumber]
    @Published var selectedNumber: UUID? = nil
    
    init() {
        self.numberList = []
    }
    
    func generateRandomNumber() {
        let randNumber = RandNumber()
        
        self.number = randNumber.number
        self.numberList.insert(randNumber, at: 0)
    }
    
    func tappedNumber(number: RandNumber) {
        self.number = number.number
        self.selectedNumber = number.id
    }
}
