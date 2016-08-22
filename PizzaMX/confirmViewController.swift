//
//  confirmViewController.swift
//  PizzaMX
//
//  Created by Erick Huacuz Guerrero on 14/08/16.
//  Copyright © 2016 Erick Huacuz Guerrero. All rights reserved.
//

import UIKit

class confirmViewController: UIViewController {

    @IBOutlet weak var tamano: UILabel!
    
    @IBOutlet weak var masa: UILabel!
    
    
    @IBOutlet weak var queso: UILabel!
    
    
    @IBOutlet weak var ingredientes: UILabel!
    
    override func viewWillAppear(animated: Bool) {
                
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "pizza.jpg")!)
        tamano.text = tamanoFinal;
        masa.text = masaFinal;
        queso.text = quesoFinal;
        ingredientes.text = ingredientesFinal;

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
