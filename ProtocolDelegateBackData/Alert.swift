//
//  Alert.swift
//  ProtocolDelegateBackData
//
//  Created by Ahmed kamal on 4/25/21.
//

import Foundation
import UIKit

extension UIViewController  {

    func createSkipAlert(alertTite: String, alertMessage: String) {
        let alert = UIAlertController(title: alertTite, message: alertMessage, preferredStyle: .alert)
        let okAlertButton = UIAlertAction(title: "ok", style: .default, handler: nil)
        alert.addAction(okAlertButton)
        present(alert, animated: true, completion: nil)
        
    }
    func dismiss() {
        navigationController?.popViewController(animated: true)
    }
}
