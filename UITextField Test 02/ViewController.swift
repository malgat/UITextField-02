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
    override func viewDidLoad() {
        super.viewDidLoad()
        //delegate 3 => delegate 객체와 ciewcontroller 객체 연결
        myTextField.delegate = self
        
        //textField에 x표시 뜨게 나옴
        myTextField.clearButtonMode = UITextField.ViewMode.always
        
        //초기에 textField에 글자 나옴
        myTextField.placeholder = "숫자를 입력하세요"
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
    
    //delegate 2 => Delegate 메소드 overriding
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.backgroundColor = UIColor.green
        //키패드 내리기
        myTextField.backgroundColor = UIColor.yellow
        return true
    }
    
    //
    public func textFieldShouldClear(_ textField: UITextField) -> Bool {
        myTextField.backgroundColor = UIColor.lightGray

        return true
    }
}

