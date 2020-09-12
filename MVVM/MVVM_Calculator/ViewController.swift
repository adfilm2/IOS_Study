//
//  ViewController.swift
//  MVVM_Calculator
//
//  Created by dohan on 10/09/2020.
//  Copyright © 2020 Dohan. All rights reserved.
//

import UIKit
import RxSwift

class ViewController: UIViewController {
    
    @IBOutlet weak var num1: UITextField!
    @IBOutlet weak var num2: UITextField!
    @IBOutlet weak var plus: UIButton!
    @IBOutlet weak var minus: UIButton!
    @IBOutlet weak var multiple: UIButton!
    @IBOutlet weak var division: UIButton!
    @IBOutlet weak var answer: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setLayout()
    }
    
    @IBAction func calculate(_ sender: UIButton){
        if(!checkEmpty()){
            switch sender.tag{
            case 1:
                print("플러스")
            case 2:
                print("마이너스")
            case 3:
                print("곱하기")
            case 4:
                print("나누기")
            default:
                break
            }
        }else{
            answer.text = "값을 입력해주세요"
        }
    }
    
    func checkEmpty()-> Bool{
        if((num1.text?.isEmpty == true) || (num2.text?.isEmpty == true)){
            return true
        }else { return false }
    }
    
    func setLayout(){
        
    }
    
    
}

