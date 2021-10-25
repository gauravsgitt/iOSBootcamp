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
        page = ["Bruce said Incredible, its extremely complete. I received the complete book Sapiens: A Brief History of Humankind file. And also download some of my favorite books. I thought this was a joke advertisement. As it turns out, this can be a very good website to download and read novels online . Thank you. I tell a buddy if someone needs this book for course or just to increase knowledge.",
                "Jessica said that Almost purchased this book, after searching numerous downloads of documents on the web without success. However, finally I got the book Sapiens: A Brief History of Humankindhere . I downloaded the pdf and epub versions. Hurry up friends, access could be closed soon. Save money on books for class.",
                "Martha reaction All of them download websites that I visit never never offer the complete publication file Sapiens: A Brief History of Humankind, not even at all. Yet to input course we will need read in full. Here I get the complete page of the book . Very simple to download and there are many file formats which can be adapted to your device.",
                "Teresa said that I searched the book Sapiens: A Brief History of Humankind and found many downloads sites but not always completed. And that sucks because of the many advertisements. But after I tried to download here its extremely fast and I I get the full version pdf of the publication. I started studying this book for course preparation, and to fill the week- end.",
                "Kathryn opinion about this I must have a course with a Sapiens: A Brief History of Humankind book. However, it was a lot of expenses on another textbook. So I tried to find online, maybe someone shared with the document. It ends I got this website and was led to some cool download website . I received this book and I am ready for course without hesitation."]
        
        for text in page {
            let vc: ViewController2 = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(identifier: "ViewController2") as! ViewController2
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
