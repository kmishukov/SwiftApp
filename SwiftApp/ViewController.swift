//
//  ViewController.swift
//  SwiftApp
//
//  Created by Konstantin Mishukov on 05.02.2023.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func setGreenAction(_ sender: Any) {
        IconManager.setIcon(.green)
    }

    @IBAction func setBlue(_ sender: Any) {
        IconManager.setIcon(.blue)
    }

    @IBAction func setDefault(_ sender: Any) {
        IconManager.setIcon(.standard)
    }
}
