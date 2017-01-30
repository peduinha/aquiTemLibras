//
//  ViewController.swift
//  aquiTemLibras
//
//  Created by Alexandre on 17/01/17.
//  Copyright © 2017 Alexandre. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase

class ViewController: UIViewController {

    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if let user = FIRAuth.auth()?.currentUser {
            print("Usuário \(user.email) Logado")
            
            //ref = FIRDatabase.database().reference().child("items")
            //startingObserveDB()
        }
        else {
            //Não existe usuário registrado. Abrir tela de Login
            performSegue(withIdentifier: "LOGIN", sender: nil)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

