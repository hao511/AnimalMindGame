//
//  FourthViewController.swift
//  AnimalMIndGame
//
//  Created by 唐辰豪 on 2020/2/20.
//  Copyright © 2020 唐辰豪. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {
    
    @IBAction func back4Btn(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func next4Btn(_ sender: UIButton) {
        if let controller = storyboard?.instantiateViewController(withIdentifier: "fifthPage") {
            print(controller.storyboard ?? "nil")
            present(controller, animated: true, completion: nil)
    }
    }
    
    @IBAction func answer4Btn(_ sender: UIButton) {
        ansA4Text.text = ""
        ansB4Text.text = ""
        ansC4Text.text = ""
        ansD4Text.text = ""
        switch sender.restorationIdentifier{
        case "ID_btn13":
            ansA4Text.text = "傲慢自大，像個獨裁者"
        case "ID_btn14":
            ansB4Text.text = "情緒化，過於喜怒無常"
        case "ID_btn15":
            ansC4Text.text = "無情冷血"
        case "ID_btn16":
            ansD4Text.text = "不安全牢靠"
        default:
            break
    }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        ansA4Text.text = ""
        ansB4Text.text = ""
        ansC4Text.text = ""
        ansD4Text.text = ""
        
    }
    
    @IBOutlet weak var ansA4Text: UILabel!
    @IBOutlet weak var ansB4Text: UILabel!
    @IBOutlet weak var ansC4Text: UILabel!
    @IBOutlet weak var ansD4Text: UILabel!
    
  

}
