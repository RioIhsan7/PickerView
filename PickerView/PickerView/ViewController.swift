//
//  ViewController.swift
//  PickerView
//
//  Created by Rio_Ihsan on 10/2/17.
//  Copyright © 2017 mac os. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var pictColor: UIPickerView!
    @IBOutlet weak var lblHasil: UILabel!
    
    var colorData = [["Green","Black","Red","White","Blue","Yellow","Brown"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.pictColor.dataSource = self
        self.pictColor.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colorData[0].count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colorData[component][row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if (row == 0) {
            self.view.backgroundColor=UIColor.green
        } else if (row == 1) {
            self.view.backgroundColor=UIColor.black
        } else if (row == 2) {
            self.view.backgroundColor=UIColor.red
        } else if (row == 3) {
            self.view.backgroundColor=UIColor.white
        } else if (row == 4) {
            self.view.backgroundColor=UIColor.blue
        } else if (row == 5) {
            self.view.backgroundColor=UIColor.yellow
        } else if (row == 6) {
            self.view.backgroundColor=UIColor.brown
        }
        lblHasil.text = " \(row)"
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

