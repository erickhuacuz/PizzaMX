//
//  tamanoViewController.swift
//  PizzaMX
//
//  Created by Erick Huacuz Guerrero on 14/08/16.
//  Copyright © 2016 Erick Huacuz Guerrero. All rights reserved.
//

import UIKit
var tamanoFinal:String = ""
class tamanoViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource{

    @IBOutlet weak var tamano: UILabel!
    
    @IBOutlet weak var tamanoPicker: UIPickerView!
    
    var pickerData: [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "pizza.jpg")!)
        
        
        pickerData = ["Chica", "Mediana", "Grande"]
        self.tamanoPicker.delegate = self
        self.tamanoPicker.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()}
        // Dispose of any resources that can be recreated.
        
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
            // This method is triggered whenever the user makes a change to the picker selection.
            // The parameter named row and component represents what was selected.
        if(row == 0)
        {
            tamano.text = "Chica";
        }
        else if(row == 1)
        {
            tamano.text = "Mediana";
        }else{
            tamano.text = "Grande";
        }
        tamanoFinal = tamano.text!;
    }
    
    @IBAction func acceptTamano(sender: AnyObject) {
        if tamanoFinal == ""{
            tamanoFinal = "Chica";
            performSegueWithIdentifier("showMasa", sender: self);
        }else{
            performSegueWithIdentifier("showMasa", sender: self)
            }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
}