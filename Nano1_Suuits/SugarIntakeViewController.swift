//
//  SugarIntakeViewController.swift
//  Nano1_Suuits
//
//  Created by audrey on 29/04/22.
//

import UIKit

class SugarIntakeViewController: UIViewController {

    @IBOutlet weak var mealNameField: UITextField!
    @IBOutlet weak var sugarAmountField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // Do any additional setup after loading the view.
    }
    @IBAction func addButtonTapped(_ sender: Any) {
        UserDefaults.standard.setValue(mealNameField.text, forKey: "mealName")
        UserDefaults.standard.setValue(sugarAmountField.text, forKey: "sugarAmount")
        let sugarEaten = UserDefaults.standard.integer(forKey: "sugarAmount")
        var sugarToday =
        UserDefaults.standard.integer(forKey: "dailySugar")
        sugarToday += sugarEaten
        UserDefaults.standard.setValue(sugarToday, forKey: "dailySugar")
        UserDefaults.standard.setValue(1, forKey: "count")
        clearField()
        showAlert()
    }
    private func showAlert() {

        // create the alert
        let alert = UIAlertController(title: "Message", message: "Your sugar intake has been added", preferredStyle: UIAlertController.Style.alert)
        
        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        // show the alert
        self.present(alert, animated: true, completion: nil)
           }
    func clearField (){
        mealNameField.text = ""
        sugarAmountField.text = ""
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
