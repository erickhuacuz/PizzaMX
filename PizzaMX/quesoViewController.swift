//
//  quesoViewController.swift
//  PizzaMX
//
//  Created by Erick Huacuz Guerrero on 14/08/16.
//  Copyright © 2016 Erick Huacuz Guerrero. All rights reserved.
//

import UIKit
var quesoFinal:String = ""
class quesoViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var quesoPicker: UIPickerView!
    var pickerData: [String] = [String]()
    @IBOutlet weak var queso: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "pizza.jpg")!)

        pickerData = ["Mozarela", "Cheddar", "Parmesano","Sin queso"]
        self.quesoPicker.delegate = self
        self.quesoPicker.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // The number of columns of data
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
        if(row == 0)
        {
            queso.text = "Mozarela";
        }
        else if(row == 1)
        {
            queso.text = "Cheddar";
        }else if(row == 2){
            queso.text = "Parmesano";
        }else{
            queso.text = "Sin queso";
        }
        quesoFinal = queso.text!;
    }

    @IBAction func showIng(sender: AnyObject) {
        if quesoFinal == ""{
        quesoFinal = "Mozarela";
        performSegueWithIdentifier("showIngredientes", sender: self)
        }else{
            performSegueWithIdentifier("showIngredientes", sender: self)
        }
    }

    

}
