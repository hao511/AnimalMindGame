//
//  SecondViewController.swift
//  AnimalMIndGame
//
//  Created by 唐辰豪 on 2020/2/6.
//  Copyright © 2020 唐辰豪. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBAction func next2Btn(_ sender: UIButton) {
        if let controller = storyboard?.instantiateViewController(withIdentifier: "thirdPage") {
            print(controller.storyboard ?? "nil")
            present(controller, animated: true, completion: nil)
        }
    
    }
    
    @IBAction func answer2Btn(_ sender: UIButton) {
        ansA2Text.text = ""
        ansB2Text.text = ""
        ansC2Text.text = ""
        ansD2Text.text = ""
        switch sender.restorationIdentifier{
        case "ID_btn05":
            ansA2Text.text = "有創造性，不讓你感到無趣"
        case "ID_btn06":
            ansB2Text.text = "直來直往"
        case "ID_btn07":
            ansC2Text.text = "忽冷忽熱，遊移不定"
        case "ID_btn08":
            ansD2Text.text = "有耐心，對你永不放棄"
        default:
            break
        }
        
    }
    @IBOutlet weak var ansA2Text: UILabel!
    @IBOutlet weak var ansB2Text: UILabel!
    @IBOutlet weak var ansC2Text: UILabel!
    @IBOutlet weak var ansD2Text: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        ansA2Text.text = ""
        ansB2Text.text = ""
        ansC2Text.text = ""
        ansD2Text.text = ""

        
    }
    
    @IBAction func btn02(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)

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
