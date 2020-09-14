//
//  ViewModel.swift
//  MVVM_Calculator
//
//  Created by dohan on 12/09/2020.
//  Copyright © 2020 Dohan. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

class ViewModel {
    var num1: Int = 0
    var num2: Int = 0
    var result = 0 {
        didSet{
            result$.onNext(result)
        }
    }
    var result$ = PublishSubject<Int>()
    
    
    func claculate(_ num1: Int, _ num2: Int, _tag: Int){
        switch _tag {
        
        case 1:
            result = num1 + num2
        case 2:
            result = num1 - num2
        case 3:
            result = num1 * num2
        case 4:
            result = num1 / num2
        default:
            break
        }
    }
}
