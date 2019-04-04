//
//  ViewController.swift
//  UITextField Test 02
//
//  Created by D7703_22 on 2019. 4. 4..
//  Copyright © 2019년 fb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    @IBAction func buttonPressed(_ sender: Any) {
        print(myTextField.text!)    //!넣어얗ㄹ
        let inString = myTextField.text
        let outString = inString! + " Coding"
        myLabel.text = outString
        myTextField.text = ""
        myTextField.resignFirstResponder()  //키보드 강제로 내림
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)   //화면 터치하면 하고있는거 끝냄 => 바탕화면 클릭시 키보드 내려감.
        myTextField.backgroundColor = UIColor.yellow
        view.backgroundColor = UIColor.green
        
        
    }
}

