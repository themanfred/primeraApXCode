//
//  ViewController.swift
//  myFirstApp
//
//  Created by Alumno on 28/09/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var Label1: UILabel!
    
    
    @IBOutlet weak var TF1: UITextField!
    
    @IBOutlet weak var numSuperior: UITextField!
    
    @IBOutlet weak var numInferior: UITextField!
    
    @IBAction func B1(_ sender: Any) {
        let alert = UIAlertController(title: "Alerta!!", message: TF1.text, preferredStyle: UIAlertController.Style.alert)
                alert.addAction(UIAlertAction(title: "Cerrar", style: UIAlertAction.Style.cancel))
                self.present(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func B2(_ sender: Any) {
        let num1 = Double(numSuperior.text ?? "0")
        let num2 = Double(numInferior.text ?? "0")
        var mensaje = "poner ambas"
        
        // Control de Variables
        if (num1 != nil && num2 != nil) {
            let resultado = (num1!) + (num2!)
            mensaje = String(resultado)
        }
        
        let alert = UIAlertController(title: "Alerta!!", message: mensaje, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Cerrar", style: UIAlertAction.Style.cancel))
        self.present(alert, animated: true, completion: nil)
            
    }
                                                       
   
    

    @IBAction func TF2(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Label1.text = "Segunda Aplicacion"
        TF1.textColor = UIColor(red:36, green:80, blue:155, alpha: 1.0)
        
    }


}

