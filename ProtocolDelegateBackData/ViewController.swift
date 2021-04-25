//
//  ViewController.swift
//  ProtocolDelegateBackData
//
//  Created by Ahmed kamal on 4/25/21.
//

import UIKit

class ViewController: UIViewController {
    //MARK:- outLet
    @IBOutlet weak var adddressName: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //MARK:- action Buttons
    @IBAction func ActionGo(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc  = storyboard.instantiateViewController(withIdentifier: "AddressVC") as? AddressVC
        vc?.addressDelegete = self
        navigationController?.pushViewController(vc!, animated: true)
        
    }
    
}

extension ViewController: ProtocolBack {
    func backData(City: String, Country: String, StreetName: String, StreetNumber: String) {
        adddressName.text = "\(City) , \(Country) , \(StreetName) , \(StreetNumber)"
    }
}
