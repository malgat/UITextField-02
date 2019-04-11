//
//  ViewController.swift
//  UITextField Test 02
//
//  Created by D7703_22 on 2019. 4. 4..
//  Copyright © 2019년 fb. All rights reserved.
//

import UIKit

//delegate 1 => UI의 delegate 객체 상속.
class ViewController: UIViewController, UITextFieldDelegate{
    
    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var myLabel: UILabel!
    
    var number = 0
    var isprime = true
    var key = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //delegate 3 => delegate 객체와 ciewcontroller 객체 연결
        myTextField.delegate = self
        
        //textField에 x표시 뜨게 나옴
        myTextField.clearButtonMode = UITextField.ViewMode.always
        myTextField.placeholder = "숫자를 입력하세요"        //초기에 textField에 글자 나옴
        
        
        
    }

    @IBAction func buttonPressed(_ sender: Any) {
        
        if let number = Int(myTextField.text!) {
            print("TRUE \(number)")
            
            if number == 0 {
                print("input again!")
                return
            }
            ////
            print("check 과정시작")
            
        } else {

            print("FALSE \(number)")
            print("again!! numeric")

        }
        
        
        /*
        if number <= 1{
            isprime = false
        }
        
        
        var i = 2
        while i < number{
            if number % i == 0{
                isprime = false
            }
            i += 1
        }
        
        if isprime == true{
            myLabel.text = "Prime Number"
        }
        else{
            myLabel.text = "Not Prime Number"
        }
        
        if let value = number {
            myLabel.text = "올바른 숫자를 입력하시오"
        }
        if let number =  {
            myLabel.text = "숫자를 입력하시오"
        }
 */
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)   //화면 터치하면 하고있는거 끝냄 => 바탕화면 클릭시 키보드 내려감.
    }
    
    //delegate 2 => Delegate 메소드 overriding
//    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        if key==false{
//            return true
//        }
//    }
    
}

