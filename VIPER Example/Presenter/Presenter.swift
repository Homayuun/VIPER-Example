//
//  Presenter.swift
//  VIPER Example
//
//  Created by Homayun on 7/27/1403 AP.
//

import UIKit

class Presenter: ViewToPresenterProtocol {
    var view: PresenterToViewProtocol?
    var interactor: PresenterToInteractorProtocol?
    
    func addition(num1: String, num2: String) {
        interactor?.add(num1: num1, num2: num2)
    }
    
    func multiplication(num1: String, num2: String) {
        interactor?.multiply(num1: num1, num2: num2)
    }
}

extension Presenter: InteractorToPresenterProtocol {
    func sendDataToPresenter(result: String) {
        view?.sendDataToView(result: result)
    }
    
    
}
