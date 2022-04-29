//
//  MyGoalsViewController.swift
//  Nano1_Suuits
//
//  Created by audrey on 28/04/22.
//

import UIKit

class MyGoalsViewController: UIViewController {

    @IBOutlet weak var sugarGoalsLabel: UILabel!
    @IBOutlet weak var todayGoalField: UITextField!
    @IBOutlet weak var backButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        sugarGoalsLabel.text = "\(UserDefaults.standard.integer(forKey: "sugarDefault")) G"
        backButton.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        
        // Do any additional setup after loading the view.
    }
    @IBAction func TapBlank(_ sender: Any) {
        view.endEditing(true)
    }
    @IBAction func saveButtonTapped(_ sender: Any) {
        UserDefaults.standard.setValue(todayGoalField.text, forKey: "sugarGoals")
        if todayGoalField.text != "" {
            showAlert()
//            UserDefaults.standard.set(todayGoalField.text, forKey: "sugarGoals")
            todayGoalField.text = ""
            
        }
    }
    private func showAlert() {

                   // create the alert
                   let alert = UIAlertController(title: "Message", message: "Your goal has been set", preferredStyle: UIAlertController.Style.alert)

                   // add an action (button)
                   alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

                   // show the alert
                   self.present(alert, animated: true, completion: nil)
           }
    /*
    // MARK: - Navigation


     }
     // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

