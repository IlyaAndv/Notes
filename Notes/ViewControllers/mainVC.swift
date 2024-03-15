//
//  mainVC.swift
//  Notes
//
//  Created by Илья on 15.03.2024.
//

import UIKit

final class mainVC: UIViewController {

    
    @IBOutlet weak var textFild: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textFild.isScrollEnabled = true
    }


}

