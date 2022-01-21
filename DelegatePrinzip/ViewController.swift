//
//  ViewController.swift
//  DelegatePrinzip
//
//  Created by star on 21.01.22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var house: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func chooseButtonTapped(_ sender: UIButton) {
        let selectionVC = storyboard?.instantiateViewController(withIdentifier: "SelectionScreen") as! SelectionViewController
        selectionVC.delegate = self
        present(selectionVC, animated: true, completion: nil)
    }
    
}

extension ViewController: keyDelegate {
    func didTapKey(image: UIImage) {
        house.image = image
    }
}
