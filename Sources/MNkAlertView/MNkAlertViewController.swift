//
//  MNkAlertViewController.swift
//  CelebrateSriLanka
//
//  Created by Malith Nadeeshan on 2018-04-03.
//  Copyright © 2018 Azbow. All rights reserved.
//
import Foundation
import UIKit

open class MNkAlertViewController: UIViewController {
    private var alertView: MNkAlertView!
    
    private weak var delegate: MNkAlertDelegate?
    private var action: ((_ action: MNkAlertAction, _ data: Any?) -> Void)?
    
    public func set(alertView: MNkAlertView) {
        self.alertView = alertView
        self.delegate = alertView.delegate
        self.action = alertView.action
    }
    
    private func config() {
        view.backgroundColor = .clear
    }
    
    public func showAlert(in target: UIViewController, aditional data: Any?){
        target.present(self, animated: false) { [unowned self] in
            self.alertView.show(in: self.view) { [unowned self] actionType in
                self.dismiss(animated: false) { [unowned self] in
                    self.delegate?.userPerformAlertAction?(actionType, aditional: data)
                    self.action?(actionType, data)
                }
            }
        }
    }
    
    deinit {
        print("deinited MNkAlertViewController")
    }
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        
        config()
    }
}

public extension UIViewController {
    func showAlert(of alertVC:MNkAlertViewController, aditional data: Any?){
        alertVC.modalTransitionStyle = .crossDissolve
        alertVC.modalPresentationStyle = .overCurrentContext
        
        alertVC.showAlert(in: self, aditional: data)
    }
}








