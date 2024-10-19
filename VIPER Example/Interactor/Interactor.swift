//
//  Interactor.swift
//  VIPER Example
//
//  Created by Homayun on 7/27/1403 AP.
//

import Foundation

class Interactor: PresenterToInteractorProtocol {    
    var presenter: InteractorToPresenterProtocol?
    
    func add(num1: String, num2: String) {
        if let a = Int(num1), let b = Int(num2) {
            let sum = String(a + b)
            presenter?.sendDataToPresenter(result: sum)
        }
    }
    
    func multiply(num1: String, num2: String) {
        if let a = Int(num1), let b = Int(num2) {
            let mul = String(a * b)
            presenter?.sendDataToPresenter(result: mul)
        }
    }
}
