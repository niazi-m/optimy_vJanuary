//
//  ViewController.swift
//  TestApp
//
//  Created by park Jeong Ho on 12/25/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 화면이 로드되었을 때 필요한 초기화 작업을 수행합니다.
        
        let button = UIButton(type: .system)
        button.setTitle("Push view Controller", for: .normal)
        button.addTarget(self, action: #selector(pushViewController), for: .touchUpInside)
        button.frame = CGRect(x:100, y: 200, width: 200, height: 100)
        self.view.addSubview(button)
        button.backgroundColor = .black

                         
    }
    
    @objc func pushViewController() {
        let newViewController = UIViewController()
        newViewController.title = "New View Controller"
        newViewController.view?.backgroundColor = .black
        navigationController?.pushViewController(newViewController, animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // 화면이 나타나기 전에 필요한 데이터를 설정하거나 기타 초기화 작업을 수행합니다.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        // 화면이 나타난 후에 사용자 입력을 처리하거나 다른 작업을 수행합니다.
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        // 다른 화면으로 이동하기 전에 필요한 작업을 수행합니다.
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        // 다른 화면으로 이동한 후 필요한 작업을 수행합니다.
    }
    
    
}

