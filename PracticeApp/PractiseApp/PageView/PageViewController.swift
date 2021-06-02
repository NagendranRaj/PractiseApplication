//
//  PageViewController.swift
//  practiseApp
//
//  Created by systimanx on 01/06/21.
//

import UIKit

class PageViewController: UIViewController {
    
    var pageViewControllers: UIPageViewController?
    
    lazy var viewControllers: [UIViewController] = {
        let redVC = UIViewController()
        redVC.view.backgroundColor = UIColor.red
        
        let grayVC = UIViewController()
        grayVC.view.backgroundColor = UIColor.gray
        
        let blueVC = UIViewController()
        blueVC.view.backgroundColor = UIColor.blue
        
        return [redVC, grayVC, blueVC]
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
      
        
        pageViewControllers = UIPageViewController(transitionStyle: .scroll,
                                                  navigationOrientation: .horizontal,
                                                  options: nil)
        pageViewControllers?.dataSource = self
        pageViewControllers?.setViewControllers([viewControllers[0]], direction: .forward, animated: true, completion: nil)
        self.addChild(pageViewControllers!)
        self.view.addSubview((pageViewControllers?.view)!)
        pageViewControllers?.didMove(toParent: self)
        

       
    }
    

}
extension PageViewController: UIPageViewControllerDataSource {
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let index = viewControllers.firstIndex(of: viewController) else {
            return nil
        }
        
        let reducedIndex = index - 1
        
        guard reducedIndex >= 0 else {
            return nil
        }
        guard viewControllers.count > reducedIndex else {
            return nil
        }
        return viewControllers[reducedIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        guard let index = viewControllers.firstIndex(of: viewController) else {
            return nil
        }
        
        let increasrIndex = index + 1
        
        guard increasrIndex >= 0 else {
            return nil
        }
        guard viewControllers.count > increasrIndex else {
            return nil
        }
        return viewControllers[increasrIndex]
        
    }
}
