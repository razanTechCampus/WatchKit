//
//  InterfaceController.swift
//  Bootcamp Extension
//
//  Created by TechCampus on 1/27/19.
//  Copyright © 2019 TechCampus. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    
    @IBOutlet weak var tableView: WKInterfaceTable!
  
    
    var countries = ["Lebanon", "Saudi Arabia", "Jordan"]

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        setupTable()
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    func setupTable() {
        tableView.setNumberOfRows(countries.count, withRowType: "CountryRow")
        
        for i in 0..<countries.count {
            if let row = tableView.rowController(at: i) as? CountryRow {
                row.countryName.setText(countries[i])
            }
        }
    }
    
    override func table(_ table: WKInterfaceTable, didSelectRowAt rowIndex: Int) {
        self.pushController(withName: "showDetails", context: countries[rowIndex])
    }

}
