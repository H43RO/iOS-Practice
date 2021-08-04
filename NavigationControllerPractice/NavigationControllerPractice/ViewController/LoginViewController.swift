//
//  LoginViewController.swift
//  NavigationControllerPractice
//
//  Created by H43RO on 2021/08/03.
//

import UIKit

class LoginViewController: UIViewController {

    // 뷰가 생성되었을 때
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 상단 네비게이션 바 부분을 숨김 처리
        self.navigationController?.isNavigationBarHidden = true
    }
}
