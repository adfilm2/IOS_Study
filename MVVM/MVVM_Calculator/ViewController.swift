//
//  ViewController.swift
//  MVVM_Calculator
//
//  Created by dohan on 10/09/2020.
//  Copyright © 2020 Dohan. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {
    
    @IBOutlet weak var num1: UITextField!
    @IBOutlet weak var num2: UITextField!
    @IBOutlet weak var plus: UIButton!
    @IBOutlet weak var minus: UIButton!
    @IBOutlet weak var multiple: UIButton!
    @IBOutlet weak var division: UIButton!
    @IBOutlet weak var answer: UILabel!
    
    let viewModel = ViewModel()
    var disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //뷰모델의 result가 바뀌면 뷰의 answer 라벨이 바뀌도록
        viewModel.result$
            .map{ ans in "The answer is \(ans)" }
            .bind(to: answer.rx.text)
            .disposed(by: disposeBag)
        
        setLayout()
        
    }
    
    @IBAction func calculate(_ sender: UIButton){
        if(!checkEmpty()){
            viewModel.claculate(Int(num1.text!)!, Int(num2.text!)!, _tag: sender.tag)
            
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

