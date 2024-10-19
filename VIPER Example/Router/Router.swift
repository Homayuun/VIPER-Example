//
//  Router.swift
//  VIPER Example
//
//  Created by Homayun on 7/27/1403 AP.
//

import Foundation

class Router: PresenterToRouterProtocol {
    
    static func createModule(ref: ViewController) {
        let presenter = Presenter()
        let interactor = Interactor()
        
        ref.presenterObj = presenter
        
        ref.presenterObj?.interactor = interactor
        ref.presenterObj?.view = ref
        
        ref.presenterObj?.interactor?.presenter = presenter
        
    }
    
    
}
