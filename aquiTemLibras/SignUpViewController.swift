//
//  SignUpViewController.swift
//  aquiTemLibras
//
//  Created by Alexandre on 30/01/17.
//  Copyright © 2017 Alexandre. All rights reserved.
//

import UIKit
import FirebaseAuth

class SignUpViewController: UIViewController {

    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    
    @IBAction func btnCreateUser(_ sender: UIButton) {
        
        FIRAuth.auth()?.createUser(withEmail: tfEmail.text!, password: tfEmail.text!, completion: {
         (user, error) in
            if error != nil {
                print("Erro, nao foi possivel criar usuario")
            }else{
                print("Usuario criado com sucesso!")
            }
            })
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
