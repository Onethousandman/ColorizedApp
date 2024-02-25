//
//  MainViewController.swift
//  HW 2
//
//  Created by Никита Тыщенко on 21.02.2024.
//  Copyright © 2024 Alexey Efimov. All rights reserved.
//

import UIKit

protocol ColorViewControllerDelegate: AnyObject {
    func setColor(for color: UIColor)
}

final class MainViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let colorVC = segue.destination as? ColorViewController {
            colorVC.colorVC = view.backgroundColor
            colorVC.delegate = self
        }
    }
}

extension MainViewController: ColorViewControllerDelegate {
    func setColor(for color: UIColor) {
        view.backgroundColor = color
    }
}
