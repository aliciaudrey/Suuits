//
//  HomeViewController.swift
//  Nano1_Suuits
//
//  Created by audrey on 28/04/22.
//

import UIKit

public var i: Int = 1

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = (tableView.dequeueReusableCell(withIdentifier: "SummaryCellID", for: indexPath) as? SummaryCell)!
        cell.SummaryLabel.text = UserDefaults.standard.string(forKey: "mealName")
        return cell
    }
    
    @IBOutlet weak var sugarGoals: UIButton!
    @IBOutlet weak var progressBar: CircularProgressView!
    @IBOutlet weak var sugarEatenLabel: UILabel!
    var percentage : Float = 0
    
    @IBOutlet weak var SummaryDescription: UILabel!
    @IBOutlet weak var SummaryTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        percentage = Float(Float(UserDefaults.standard.integer(forKey: "dailySugar")))/Float(UserDefaults.standard.integer(forKey: "sugarGoals"))
        sugarEatenLabel.text = "\(UserDefaults.standard.integer(forKey: "dailySugar"))g"
        print (UserDefaults.standard.integer(forKey: "sugarAmount"))
        print (UserDefaults.standard.integer(forKey: "sugarGoals"))
        print (percentage)
        progressBar.trackColor = UIColor(red: 225/255, green: 139/255, blue: 124/255, alpha: 35/100)
        progressBar.progressColor = UIColor(red: 225/255, green: 139/255, blue: 124/255, alpha: 100/100)
        progressBar.setProgressWithAnimation(duration: 1, value: percentage)
        if UserDefaults.standard.bool(forKey: "isMan"){
            UserDefaults.standard.setValue(24, forKey: "defaultSugar")
        }else {
            UserDefaults.standard.setValue(36, forKey: "defaultSugar")
        }
        let titleText = "of \(UserDefaults.standard.value(forKey: "sugarGoals") ?? 25)g"
        
        sugarGoals.setTitle(titleText, for: .normal)

        if(i==0){
            SummaryTableView.isHidden = true
            SummaryDescription.isHidden = false
        }
        else{
            SummaryTableView.isHidden = false
            SummaryDescription.isHidden = true
        }
        // Do any additional setup after loading the view.
    }
//
//    @objc func animateProgress() {
//            let cP = self.view.viewWithTag(101) as! CircularProgressView
//            cP.setProgressWithAnimation(duration: 1.0, value: 16/25)
//
//        }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

