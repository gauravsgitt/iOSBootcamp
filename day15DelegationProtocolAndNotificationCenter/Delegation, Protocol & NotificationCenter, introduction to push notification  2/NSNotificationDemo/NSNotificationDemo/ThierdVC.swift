

import UIKit

class ThierdVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

       self.title = "Thierd VC"
        
    }
   
    @IBAction func buttonClickToNotifyTapped(_ sender: Any) {
        
        NotificationCenter.default.post(name: Notification.Name(rawValue: notificationIdentifier), object: self)
    }
    
}
