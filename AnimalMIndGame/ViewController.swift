//
//  ViewController.swift
//  AnimalMIndGame
//
//  Created by 唐辰豪 on 2020/2/6.
//  Copyright © 2020 唐辰豪. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var question: UILabel!
    @IBAction func next_btn(_ sender: UIButton) {
        if let controller = storyboard?.instantiateViewController(withIdentifier: "secondPage") {
            print(controller.storyboard ?? "nil")
            present(controller, animated: true, completion: nil)
        }//換頁面用
    }
    @IBAction func back_btn(_ sender: UIButton) {
    }
    
    @IBAction func answerBtn(_ sender: UIButton)
    {
        ansAText.text = ""
        ansBText.text = ""
        ansCText.text = ""
        ansDText.text = ""
        switch sender.restorationIdentifier {
        case "ID_btn01":
            ansAText.text = "外表冰冷內心熾熱的人"
        case "ID_btn02":
            ansBText.text = "重視順從而溫暖的人"
        case "ID_btn03":
            ansCText.text = "優雅及有禮貌的人"
        case "ID_btn04":
            ansDText.text = "不受約束嚮往自由的人"
        default:
            break
        }
    }
    @IBOutlet weak var ansAText: UILabel!
    
    @IBOutlet weak var ansBText: UILabel!
    
    @IBOutlet weak var ansCText: UILabel!
    
    @IBOutlet weak var ansDText: UILabel!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //btn.layer.cornerRadius = 5//圓角
        ansAText.text = ""
        ansBText.text = ""
        ansCText.text = ""
        ansDText.text = ""

    }
    


}

