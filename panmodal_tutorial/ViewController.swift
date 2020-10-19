//
//  ViewController.swift
//  panmodal_tutorial
//
//  Created by Jeff Jeong on 2020/10/20.
//

import UIKit
import PanModal

class ViewController: UIViewController {
    
    @IBOutlet var tableModalBtn: UIButton!
    @IBOutlet var halfModalBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("ViewController - viewDidLoad()")
    }


    @IBAction func onModalBtnClicked(_ sender: UIButton) {
        print("ViewController - onModalBtnClicked()")
        
        switch sender {
        case tableModalBtn:
            print("테이블 모달버튼이 선택되었다")
            let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MyTableVC") as! MyTableVC
            presentPanModal(vc)
        case halfModalBtn:
            print("하프 모달버튼이 선택되었다")
            let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MySimpleVC") as! MySimpleVC
            presentPanModal(vc)
        default: break
        }
        
    }
}

