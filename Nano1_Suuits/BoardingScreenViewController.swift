//
//  BoardingScreenViewController.swift
//  Nano1_Suuits
//
//  Created by audrey on 29/04/22.
//

import UIKit

class BoardingScreenViewController: UIViewController {

    @IBOutlet weak var genderPicker: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextTapButton(_ sender: Any) {
        if genderPicker.selectedSegmentIndex == 0 {
            UserDefaults.standard.setValue(36, forKey: "sugarDefault")
        }else{
            UserDefaults.standard.setValue(24, forKey: "sugarDefault")
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
