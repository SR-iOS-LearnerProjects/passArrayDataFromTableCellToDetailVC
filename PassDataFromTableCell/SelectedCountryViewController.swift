//
//  SelectedCountryViewController.swift
//  PassDataFromTableCell
//
//  Created by Sridatta Nallamilli on 22/12/19.
//  Copyright © 2019 Sridatta Nallamilli. All rights reserved.
//

import UIKit

class SelectedCountryViewController: UIViewController {

    var Name = ""
    var Code = ""
    
    @IBOutlet weak var countryNameLabel: UILabel!
    @IBOutlet weak var countryCodeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        countryNameLabel.text = "You selected \(Name)"
        countryCodeLabel.text = "\(Code) is the code assigned to this country."
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
