//
//  LoginViewController.swift
//  NavigationControllerPractice
//
//  Created by H43RO on 2021/08/03.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var loginButton: UIButton!
    
    // 뷰가 생성되었을 때
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 상단 네비게이션 바 부분을 숨김 처리
        self.navigationController?.isNavigationBarHidden = true
        
        loginButton.addTarget(self, action: #selector(moveToMainViewController), for: .touchUpInside)
    }
    
    // 메인 화면으로 이동
    @objc fileprivate func moveToMainViewController(){
        print("LoginViewController - moveToMainViewController() called")
        let mainViewController = MainViewController()
        self.navigationController?.pushViewController(mainViewController, animated: true)
    }
}
