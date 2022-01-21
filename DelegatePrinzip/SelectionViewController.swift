//
//  SelectionViewController.swift
//  DelegatePrinzip
//
//  Created by star on 21.01.22.
//

import UIKit

protocol keyDelegate {
    func didTapKey(image: UIImage)
}

class SelectionViewController: UIViewController {
    
    var delegate: keyDelegate!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func greenKeyTapped(_ sender: UIButton) {
        delegate.didTapKey(image: UIImage(named: "greenHouse")!)
        
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func yellowKeyTapped(_ sender: UIButton) {
        delegate.didTapKey(image: UIImage(named: "yellowHouse")!)
        
        dismiss(animated: true, completion: nil)
    }
    
}
