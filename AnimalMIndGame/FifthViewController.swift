

import UIKit

class FifthViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ansA5Text.text = ""
        ansB5Text.text = ""
        ansC5Text.text = ""
        ansD5Text.text = ""
    }
    
    @IBAction func answer5Btn(_ sender: UIButton) {
        ansA5Text.text = ""
        ansB5Text.text = ""
        ansC5Text.text = ""
        ansD5Text.text = ""
        switch sender.restorationIdentifier{
        case "ID_btn17":
            ansA5Text.text = "用心溝通，對方自然會知道你想要什麼"
        case "ID_btn18":
            ansB5Text.text = "能談任何事，沒有秘密"
        case "ID_btn19":
            ansC5Text.text = "一種一直能讓你感受到溫暖與戀愛的關係"
        case "ID_btn20":
            ansD5Text.text = "能與之一起成長的長期關係"
        default:
            break
    }
    }
    @IBOutlet weak var ansA5Text: UILabel!
    @IBOutlet weak var ansB5Text: UILabel!
    @IBOutlet weak var ansC5Text: UILabel!
    @IBOutlet weak var ansD5Text: UILabel!

    @IBAction func back5Btn(_ sender: UIButton) {
         dismiss(animated: true, completion: nil)
    }
    
    @IBAction func next5Btn(_ sender: UIButton) {
        if let controller = storyboard?.instantiateViewController(withIdentifier: "sixthPage") {
            print(controller.storyboard ?? "nil")
            present(controller, animated: true, completion: nil)
    }
}

}
