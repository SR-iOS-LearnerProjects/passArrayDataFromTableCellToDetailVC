//
//  ViewController.swift
//  PassDataFromTableCell
//
//  Created by Sridatta Nallamilli on 22/12/19.
//  Copyright © 2019 Sridatta Nallamilli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var cCode = ["+01", "+02", "+03", "+91", "+05", "+06", "+07", "+08", "+09", "+10"]
    var cName = ["Alaska", "Austria", "Bahgdad", "India", "Indonesia", "Malaysia", "Maldives", "Norway", "Poland", "Sri Lanka"]
    
    @IBOutlet weak var countryTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(true)
//        navigationController?.setNavigationBarHidden(true, animated: false)
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 65
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "countryListWithCode", for: indexPath) as? CountryTableViewCell
        cell?.countryCode.text = cCode[indexPath.row]
        cell?.countryName.text = cName[indexPath.row]
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(identifier: "SelectedCountryViewController") as? SelectedCountryViewController
        vc?.Name = cName[indexPath.row]
        vc?.Code = cCode[indexPath.row]
    self.navigationController?.pushViewController(vc!, animated: true)
    }
    
}
