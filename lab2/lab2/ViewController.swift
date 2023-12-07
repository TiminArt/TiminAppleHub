//
//  ViewController.swift
//  lab2
//
//  Created by Артемий Тимин on 04.12.2023.
//

import UIKit

class ViewController: UIViewController {

    //Текст
    private lazy var lableMain: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview($0)
        $0.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        $0.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        return $0
    }(UILabel())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemMint
        self.navigationItem.title = "Main page"
//        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Button", style: .plain, target: nil, action: nil)
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "calendar"), style: .plain, target: self, action: #selector(didTapButton))
        self.navigationController?.navigationBar.tintColor = UIColor.black
        lableMain.text = "Hi! This is the welcome page of the calendar."
    }
    
    //Функция кнопки
    @objc private func didTapButton() {
        let vc = MyViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

