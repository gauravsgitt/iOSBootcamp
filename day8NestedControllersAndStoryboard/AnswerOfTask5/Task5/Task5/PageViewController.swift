//
//  PageVC.swift
//  Task5
//
//  Created by Gaurav Bisht on 25/10/21.
//

import UIKit

class PageViewController: UIPageViewController, UIPageViewControllerDelegate, UIPageViewControllerDataSource {

    var controllers = [UIViewController]()
    
    required init?(coder: NSCoder) {
        super.init(transitionStyle: .pageCurl, navigationOrientation: .horizontal, options: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.dataSource = self
        self.delegate = self
        var page = [String]()
        page = ["This is page 1. Swipe left.", "This is page 2. Swipe again.", "This is page 3. Swipe one more time.", "This is page 4. Swipe one last time.", "This is page 5. Last page, swipe right to go back."]
        
        for text in page {
            let vc: OtherTextViewController = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(identifier: "ViewController2") as! OtherTextViewController
            vc.text = text
            controllers.append(vc)
        }
        guard let first = controllers.first else {
            return
        }
        self.setViewControllers([first], direction: .forward, animated: true, completion: nil)
    }
    
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let index = controllers.firstIndex(of: viewController), index > 0 else {
            return nil
        }
        let before = index - 1
        return controllers[before]    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let index = controllers.firstIndex(of: viewController), index < (controllers.count - 1) else {
            return nil
        }
        let after = index + 1
        return controllers[after]
    }

}
