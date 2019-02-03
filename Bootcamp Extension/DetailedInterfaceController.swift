//
//  DetailedInterfaceController.swift
//  Bootcamp Extension
//
//  Created by TechCampus on 1/27/19.
//  Copyright © 2019 TechCampus. All rights reserved.
//

import WatchKit
import Foundation


class DetailedInterfaceController: WKInterfaceController {

    @IBOutlet weak var countryName: WKInterfaceLabel!
    @IBOutlet weak var flagImage: WKInterfaceImage!
    @IBOutlet weak var capitalName: WKInterfaceLabel!
    @IBOutlet weak var currencyName: WKInterfaceLabel!
    
    let capital = ["Lebanon":"Beirut", "Saudi Arabia":"Riyadh", "Jordan":"Amman"]
    let currency = ["Lebanon":"Lebanese Lira", "Saudi Arabia":"Saudi Riyal", "Jordan":"Jordanian Dinar"]
    let flag = ["Lebanon":"Leb", "Saudi Arabia":"SA", "Jordan":"Jor"]
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        let name = context as! String
        countryName.setText(capital[name]!)
        capitalName.setText(capital[name]!)
        currencyName.setText(currency[name]!)
        flagImage.setImage(UIImage(named: flag[name]!))
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
