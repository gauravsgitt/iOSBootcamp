

import UIKit

let notificationIdentifier = "notificatnotificationIdentifierionId"


class SecondVC: UIViewController {

    @IBOutlet weak var labelTitle: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Second Vc"
       NotificationCenter.default.addObserver(self,selector: #selector(doSomethingAfterNotified),name: NSNotification.Name(rawValue: notificationIdentifier), object: nil)
        
    }

    @objc func doSomethingAfterNotified () -> () {
        
        self.view.backgroundColor = UIColor.green
        labelTitle!.text = "I've been notified"
    }
    
    @IBAction func buttonNextTapped(_ sender: Any) {
        
        let vc: ThierdVC = self.storyboard?.instantiateViewController(withIdentifier: "ThierdVC") as! ThierdVC
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    deinit{
       
         NotificationCenter.default.removeObserver(self, name: NSNotification.Name(rawValue: notificationIdentifier), object: nil)

     }

//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(animated)
//        NotificationCenter.default.removeObserver(self, name: NSNotification.Name(rawValue: notificationIdentifier), object: nil)
//    }
}
