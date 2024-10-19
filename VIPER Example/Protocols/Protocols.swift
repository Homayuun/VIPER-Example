//
//  Protocols.swift
//  VIPER Example
//
//  Created by Homayun on 7/27/1403 AP.
//

import Foundation

protocol PresenterToInteractorProtocol {
    var presenter: InteractorToPresenterProtocol? { get set}
    
    func add(num1: String, num2: String)
    func multiply(num1: String, num2: String)

}

protocol InteractorToPresenterProtocol {
    func sendDataToPresenter(result: String)
}

protocol PresenterToViewProtocol {
    func sendDataToView(result: String)
}

protocol ViewToPresenterProtocol {
    var view: PresenterToViewProtocol? { get set }
    var interactor: PresenterToInteractorProtocol? { get set }
    
    func addition(num1: String, num2: String)
    func multiplication(num1: String, num2: String)

}

protocol PresenterToRouterProtocol {
    static func createModule(ref: ViewController)
}
