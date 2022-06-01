//
//  SecondViewController.swift
//  Core
//
//  Created by Naveed Tahir on 24/05/2022.
//

import UIKit
import Core

public class SecondViewController: UIViewController, StoryboardInstantiable {

    public override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    public static func create() -> SecondViewController {
//        let vc = self.instantiateViewControllerFromStoryboard() as! FirstViewController
        let vc = SecondViewController.instantiateViewController(Bundle(for: Self.self).resource, storyBoard: "SecondModuleStory")
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

}
