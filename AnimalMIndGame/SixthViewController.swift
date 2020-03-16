

import UIKit

class SixthViewController: UIViewController {

    
    @IBAction func back6Btn(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        ansA6Text.text = ""
        ansB6Text.text = ""
        ansC6Text.text = ""
        ansD6Text.text = ""
       
    }
    
    @IBAction func answer6Btn(_ sender: UIButton) {
        ansA6Text.text = ""
        ansB6Text.text = ""
        ansC6Text.text = ""
        ansD6Text.text = ""
        switch sender.restorationIdentifier{
        case "ID_btn21":
            ansA6Text.text = "非常消極，不相信有快樂婚姻"
        case "ID_btn22":
            ansB6Text.text = "你認為婚姻是很珍貴的一件事，會很珍惜對方"
        case "ID_btn23":
            ansC6Text.text = "害怕婚姻，覺得婚姻會剝奪你的自由"
        case "ID_btn24":
            ansD6Text.text = "一直想要結婚但事實上甚至不知道婚姻是什麼"
        default:
            break
    }
    }
    @IBOutlet weak var ansA6Text: UILabel!
    @IBOutlet weak var ansB6Text: UILabel!
    @IBOutlet weak var ansC6Text: UILabel!
    @IBOutlet weak var ansD6Text: UILabel!
}
