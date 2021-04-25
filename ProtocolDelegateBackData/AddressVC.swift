//
//  AddressVC.swift
//  ProtocolDelegateBackData
//
//  Created by Ahmed kamal on 4/25/21.
//

import UIKit

protocol ProtocolBack {
    func backData(City: String , Country: String , StreetName: String , StreetNumber: String)
}
class AddressVC: UIViewController {

    //MARK:- outLet
    @IBOutlet weak var cityTF: UITextField!
    @IBOutlet weak var countryTF: UITextField!
    @IBOutlet weak var streetNameTF: UITextField!
    @IBOutlet weak var StreetNumberTF: UITextField!
    
    //MARK:- variables
    var addressDelegete: ProtocolBack?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //MARK:- action Buttons
    @IBAction func ActionBack(_ sender: Any) {
        
        if ((cityTF.text?.isEmpty)! || (countryTF.text?.isEmpty)! || (streetNameTF.text?.isEmpty)! || (StreetNumberTF.text?.isEmpty)!) {
            createSkipAlert(alertTite: "Error", alertMessage: "Please Enter All Data")
        } else {
            addressDelegete?.backData(City: cityTF.text ?? "", Country: countryTF.text ?? "", StreetName: streetNameTF.text ?? "", StreetNumber: StreetNumberTF.text ?? "")
            dismiss()
        }
       
    }
    
    
}
