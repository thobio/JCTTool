//
//  File.swift
//  
//
//  Created by Thobio Joseph on 26/10/21.
//

import Foundation
import UIKit

extension UIViewController {
    public func hideKeyboardWhenTappedAround() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}


public struct Alerts {
    
    private static func showBasicAlert(on vc: UIViewController,with title:String, message:String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        DispatchQueue.main.async {vc.present(alert, animated: true, completion: nil)}
    }
    
    public static func showSmapleAlert(on vc:UIViewController,with title:String, message:String){
        showBasicAlert(on: vc, with: title, message: message)
    }
}
