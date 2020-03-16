//
//  ThirdViewController.swift
//  AnimalMIndGame
//
//  Created by 唐辰豪 on 2020/2/22.
//  Copyright © 2020 唐辰豪. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    @IBAction func answer3Btn(_ sender: UIButton) {
        ansA3Text.text = ""
        ansB3Text.text = ""
        ansC3Text.text = ""
        ansD3Text.text = ""
        switch sender.restorationIdentifier{
        case "ID_btn09":
            ansA3Text.text = "忠誠忠實，永不改變"
        case "ID_btn10":
            ansB3Text.text = "有個性的"
        case "ID_btn11":
            ansC3Text.text = "樂觀的"
        case "ID_btn12":
            ansD3Text.text = "可通融的"
        default:
            break
    }
    
    }
    
    @IBOutlet weak var ansA3Text: UILabel!
    @IBOutlet weak var ansB3Text: UILabel!
    @IBOutlet weak var ansC3Text: UILabel!
    @IBOutlet weak var ansD3Text: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ansA3Text.text = ""
        ansB3Text.text = ""
        ansC3Text.text = ""
        ansD3Text.text = ""
    }
    @IBAction func back3Btn(_ sender: UIButton) {dismiss(animated: true, completion: nil)

    }
    @IBAction func next3Btn(_ sender: UIButton) {
        if let controller = storyboard?.instantiateViewController(withIdentifier: "fourthPage") {
        print(controller.storyboard ?? "nil")
        present(controller, animated: true, completion: nil)
    }
    

   

}

}
