

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelTitle: UILabel!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.title = "First VC"
        NotificationCenter.default.addObserver(self,selector: #selector(doSomethingAfterNotified),name: NSNotification.Name(rawValue: notificationIdentifier), object: nil)
        
        
    }
    
    @objc func doSomethingAfterNotified() {
        self.view.backgroundColor = UIColor.red
        labelTitle!.text = "I've been notified"
    }

    
    @IBAction func buttonNavigateToNextTapped(_ sender: Any) {
        
        let vc: SecondVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") as! SecondVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    deinit{
          
            NotificationCenter.default.removeObserver(self, name: NSNotification.Name(rawValue: notificationIdentifier), object: nil)

        }
    
}
