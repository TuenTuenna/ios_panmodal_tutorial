//
//  MySimpleVC.swift
//  panmodal_tutorial
//
//  Created by Jeff Jeong on 2020/10/20.
//

import Foundation
import UIKit
import PanModal

class MySimpleVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func onConfirmBtnClicked(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}

extension MySimpleVC : PanModalPresentable {
    
    var panScrollable: UIScrollView? {
        return nil
    }
    
//    // 접힌거
//    var shortFormHeight: PanModalHeight {
//        return .contentHeight(300)
//    }
//
//    // 완전 펼쳐진거
//    var longFormHeight: PanModalHeight {
//        return .contentHeight(300)
//    }
//    var anchorModalToLongForm: Bool {
//        // true 이면 화면 최상단 까지 스크롤 안됨
//        return false
//        // false 이면 화면 최상단 까지 스크롤 됨
//    }
}


