//
//  masaViewController.swift
//  PizzaMX
//
//  Created by Erick Huacuz Guerrero on 14/08/16.
//  Copyright © 2016 Erick Huacuz Guerrero. All rights reserved.
//

import UIKit
var masaFinal:String = ""
class masaViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var masa: UILabel!
    @IBOutlet weak var masaPicker: UIPickerView!
    var pickerData: [String] = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "pizza.jpg")!)
        pickerData = ["Delagada", "Crujiente", "Gruesa"]
        self.masaPicker.delegate = self
        self.masaPicker.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    // The number of rows of data
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    // The data to return for the row and component (column) that's being passed in
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    // Catpure the picker view selection
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if(row == 0){
            masa.text = "Delgada";
        }
        else if(row == 1){
            masa.text = "Crujiente";
        }
        else{
            masa.text = "Gruesa";
        }
        masaFinal = masa.text!
    }
    //if user doesn't choose then use default and go to next view
    @IBAction func acceptMasa(sender: AnyObject) {
        if masaFinal == ""{
            masaFinal = "Delgada";
            performSegueWithIdentifier("showQueso", sender: self)
        }else{
            performSegueWithIdentifier("showQueso", sender: self)
        }
    }
}