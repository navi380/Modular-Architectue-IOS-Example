//
//  FirstViewController.swift
//  Core
//
//  Created by Naveed Tahir on 24/05/2022.
//

import UIKit
import Core

public protocol FirstViewControllerCoordinatorDelegate: AnyObject {
    func goToSecondViewController(flow: FirstModuleFlowEnum)
}


public class FirstViewController: UIViewController, StoryboardInstantiable {
    
    public var tapped: (() -> Void)?
    
    public var firstViewControllerCoordinatorDelegate: FirstViewControllerCoordinatorDelegate?
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func matchString(value: String) -> Bool{
        if value == "Naveed"{
            return true
        }else{
         return false
        }
    }
    
    public static func create() -> FirstViewController {
//        let vc = self.instantiateViewControllerFromStoryboard() as! FirstViewController
        let vc = FirstViewController.instantiateViewController(Bundle(for: Self.self).resource, storyBoard: "FirstModuleStory")
        return vc
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction public func moveToNext(_ sender: Any) {
//        firstViewControllerCoordinatorDelegate?.goToSecondViewController(flow: .moveToSecondViewController)
        
        NavigationInjection.shared.navigator?.performNavigation(navigator: self.navigationController ?? UINavigationController(), flow: .SecondModule)
    }
    
    @IBAction func showDetail(_ sender: Any) {
        
        let vc = DetailViewController.create()
        vc.testLabelVal = "Good You perform Inner Navigation with Coordinator"
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
