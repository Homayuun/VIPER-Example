//
//  ViewController.swift
//  VIPER Example
//
//  Created by Homayun on 7/27/1403 AP.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txtFieldA: UITextField!
    @IBOutlet weak var txtFieldB: UITextField!
    @IBOutlet weak var labelResult: UILabel!
    
    var presenterObj: ViewToPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelResult.text = "0"
        Router.createModule(ref: self)
    }
    
    @IBAction func btnAdd(_ sender: Any) {
        if let a = self.txtFieldA.text, let b = self.txtFieldB.text {
            presenterObj?.addition(num1: a, num2: b)
        }
    }
    
    @IBAction func btnMultiply(_ sender: Any) {
        if let a = self.txtFieldA.text, let b = self.txtFieldB.text {
            presenterObj?.multiplication(num1: a, num2: b)
        }
    }
}

extension ViewController: PresenterToViewProtocol {
    func sendDataToView(result: String) {
        labelResult.text = result
    }
}
