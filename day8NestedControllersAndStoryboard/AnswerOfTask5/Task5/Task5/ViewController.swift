//
//  ViewController.swift
//  Task5
//
//  Created by Gaurav Bisht on 25/10/21.
//

import UIKit

class ViewController: UIViewController, UIPageViewControllerDelegate, UIPageViewControllerDataSource {
    
    var controllers = [UIViewController]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let vc = UIViewController()
        vc.view.backgroundColor = .red
        controllers.append(vc)

        let vc1 = UIViewController()
        vc1.view.backgroundColor = .green
        controllers.append(vc1)
        
        let vc2 = UIViewController()
        vc2.view.backgroundColor = .purple
        controllers.append(vc2)

        let vc3 = UIViewController()
        vc3.view.backgroundColor = .orange
        controllers.append(vc3)
        
        let vc4 = UIViewController()
        vc4.view.backgroundColor = .blue
        controllers.append(vc4)

        let vc5 = UIViewController()
        vc5.view.backgroundColor = .brown
        controllers.append(vc5)
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool ) {
        super.viewDidAppear(true)
        DispatchQueue.main.asyncAfter(deadline: .now()+2, execute: {
            self.showPageViewController()
        })
    }

    func showPageViewController() {
        guard let first = controllers.first else {
            return
        }
        let pgVC = UIPageViewController(transitionStyle: .pageCurl, navigationOrientation: .horizontal, options: nil)
        pgVC.dataSource = self
        pgVC.delegate = self
        pgVC.setViewControllers([first], direction: .forward, animated: true, completion: nil)
        //pgVC.modalPresentationStyle = .fullScreen
        present(pgVC, animated: true, completion: nil)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let index = controllers.firstIndex(of: viewController), index > 0 else {
            return nil
        }
        let before = index - 1
        return controllers[before]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let index = controllers.firstIndex(of: viewController), index < (controllers.count - 1) else {
            return nil
        }
        let after = index + 1
        return controllers[after]
    }
    
    
}

