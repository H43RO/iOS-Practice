//
//  MainViewController.swift
//  NavigationControllerPractice
//
//  Created by 김현준 on 2021/08/05.
//

import UIKit

class MainViewController: UIViewController {
    
    // 제목
    var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "메인화면"
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 50)
        return label
    }()
    
    let changeButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("배경색 변경", for: .normal)
        button.setTitleColor(.gray, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.backgroundColor = UIColor.white
        button.layer.cornerRadius = 5
        button.contentEdgeInsets = UIEdgeInsets(top: 5, left: 20, bottom: 5, right: 20)
        button.addTarget(self, action: #selector(changeBackgroundColor), for: .touchUpInside)
    
        return button
    }()
    
    var isBackgroundOrange: Bool?
    
    // 뷰가 생성되었을 때
    override func viewDidLoad() {
        super.viewDidLoad()
        
        isBackgroundOrange = true
        
        view.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        view.addSubview(titleLabel)
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        // 상위에 있는 뷰의 정 가운데로 놓겠다 (X, Y축 앵커 지정)
        titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        view.addSubview(changeButton)
        changeButton.translatesAutoresizingMaskIntoConstraints = false
        changeButton.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20).isActive = true
        changeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    @objc fileprivate func changeBackgroundColor() {
        print("MainViewController - changeBackgroundColor()")
        
        if isBackgroundOrange == true {
            view.backgroundColor = #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)
        } else {
            view.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        }
        
        isBackgroundOrange?.toggle()
    }
}
