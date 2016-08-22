//
//  ingredienteViewController.swift
//  PizzaMX
//
//  Created by Erick Huacuz Guerrero on 14/08/16.
//  Copyright © 2016 Erick Huacuz Guerrero. All rights reserved.
//

import UIKit
var ingredientesFinal:String = ""
class ingredienteViewController: UIViewController {
    var chosen:String = "";
    var numberOfComa:Int = 0;
    
    @IBOutlet weak var ingredientes: UILabel!

    
    
    @IBOutlet weak var warning: UILabel!
    
    @IBAction func jamon(sender: AnyObject) {
        numberOfComa = 0;
        for i in chosen.characters {
            if i == ","{
                numberOfComa += 1}
        }
        if numberOfComa < 4{
            if chosen == ""{
                chosen = chosen + "jamón";
            }else{
                chosen = chosen + ", jamón";
            }
            ingredientes.text = chosen;
        }else{
            warning.text = "No más de 5 ingredients";
        }
    }
    
    @IBAction func pepperoni(sender: AnyObject) {
        numberOfComa = 0;
        for i in chosen.characters {
            if i == ","{
                numberOfComa += 1}
        }
        if numberOfComa < 4{
            if chosen == ""{
                chosen = chosen + "pepperoni";
        }else{
            chosen = chosen + ", pepperoni";
        }
        ingredientes.text = chosen;
        }else{
            warning.text = "No más de 5 ingredients";}
    }
    
    @IBAction func pavo(sender: AnyObject) {
        numberOfComa = 0;
        for i in chosen.characters {
            if i == ","{
                numberOfComa += 1}
        }
        if numberOfComa < 4{
            if chosen == ""{
                chosen = chosen + "pavo";
        }else{
            chosen = chosen + ", pavo";
        }
        ingredientes.text = chosen;
        }else{
            warning.text = "No más de 5 ingredients";}
    }
    
    @IBAction func salchicha(sender: AnyObject) {
        numberOfComa = 0;
        for i in chosen.characters {
            if i == ","{
                numberOfComa += 1}
        }
        if numberOfComa < 4{
            if chosen == ""{
            chosen = chosen + "salchicha";
        }else{
            chosen = chosen + ", salchicha";
        }
        ingredientes.text = chosen;
        }else{
            warning.text = "No más de 5 ingredients";}
    }

    @IBAction func aceituna(sender: AnyObject) {
        numberOfComa = 0;
        for i in chosen.characters {
            if i == ","{
                numberOfComa += 1}
        }
        if numberOfComa < 4{
            if chosen == ""{
            chosen = chosen + "aceituna";
        }else{
            chosen = chosen + ", aceituna";
        }
        ingredientes.text = chosen;
        }else{
            warning.text = "No más de 5 ingredients";}
    }
    @IBAction func cebolla(sender: AnyObject) {
        numberOfComa = 0;
        for i in chosen.characters {
            if i == ","{
                numberOfComa += 1}
        }
        if numberOfComa < 4{
            if chosen == ""{
            chosen = chosen + "cebolla";
        }else{
            chosen = chosen + ", cebolla";
        }
        ingredientes.text = chosen;
    }else{
    warning.text = "No más de 5 ingredients";}
    }

    @IBAction func pimiento(sender: AnyObject) {
        numberOfComa = 0;
        for i in chosen.characters {
            if i == ","{
                numberOfComa += 1}
        }
        if numberOfComa < 4{
            if chosen == ""{
            chosen = chosen + "pimiento";
        }else{
            chosen = chosen + ", pimiento";
        }
        ingredientes.text = chosen;
        }else{
            warning.text = "No más de 5 ingredients";
        }
    }
    
    @IBAction func pina(sender: AnyObject) {
        numberOfComa = 0;
        for i in chosen.characters {
            if i == ","{
                numberOfComa += 1}
        }
        if numberOfComa < 4{
            if chosen == ""{
            chosen = chosen + "piña";
        }else{
            chosen = chosen + ", piña";
        }
        ingredientes.text = chosen;
        }else{
            warning.text = "No más de 5 ingredients";}
    }
    
    @IBAction func anchoa(sender: AnyObject) {
        numberOfComa = 0;
        for i in chosen.characters {
            if i == ","{
                numberOfComa += 1}
        }
        if numberOfComa < 4{
            if chosen == ""{
            chosen = chosen + "anchoa";
        }else{
            chosen = chosen + ", anchoa";
        }
        ingredientes.text = chosen;
        }else{
            warning.text = "No más de 5 ingredients";}
    }
    

    @IBAction func selectAgain(sender: AnyObject) {
        chosen = "";
        ingredientes.text = chosen;
    }
    @IBAction func check(sender: AnyObject) {
        if chosen == ""{
            warning.text = "Por favor seleccione al menos un ingrediente";
        }else{
            ingredientesFinal = ingredientes.text!;
            performSegueWithIdentifier("showConfirm", sender: self)
        }}
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "pizza.jpg")!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
