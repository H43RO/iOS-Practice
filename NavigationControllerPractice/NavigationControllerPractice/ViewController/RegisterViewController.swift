//
//  RegisterViewController.swift
//  NavigationControllerPractice
//
//  Created by H43RO on 2021/08/03.
//

import UIKit

class RegisterViewController: UIViewController {
    @IBOutlet weak var buttonLoginViewController: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 상단 네비게이션 바 부분을 숨김 처리
        self.navigationController?.isNavigationBarHidden = true
    }
    
    @IBAction func onLoginButtonClicked(_ sender: UIButton) {
        print("RegisterViewController - onLoginViewControllerButtonClicked() called / 로그인 버튼 클릭")
        
        // 네비게이션 뷰 컨트롤러를 팝 하면 로그인 화면이 나오게 됨
        self.navigationController?.popViewController(animated: true)
    }
    
}
