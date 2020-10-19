//
//  MyTableVC.swift
//  panmodal_tutorial
//
//  Created by Jeff Jeong on 2020/10/20.
//

import Foundation
import UIKit
import PanModal


class MyTableVC: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

extension MyTableVC: PanModalPresentable {
    
    
    var panScrollable: UIScrollView? {
        return tableView
    }
    
    // 접힌거
    var shortFormHeight: PanModalHeight {
        return .contentHeight(300)
    }

    // 완전 펼쳐진거
    var longFormHeight: PanModalHeight {
        return .maxHeightWithTopInset(100)
    }
    var anchorModalToLongForm: Bool {
        // true 이면 화면 최상단 까지 스크롤 안됨
        return true
        // false 이면 화면 최상단 까지 스크롤 됨
    }
////
}
