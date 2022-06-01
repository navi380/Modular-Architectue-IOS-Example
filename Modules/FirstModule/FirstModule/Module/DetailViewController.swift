//
//  DetailViewController.swift
//  FirstModule
//
//  Created by Naveed Tahir on 01/06/2022.
//

import UIKit
import Core

class DetailViewController: UIViewController {

    @IBOutlet weak var testLabel: UILabel!
    
    var testLabelVal: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.testLabel.text = testLabelVal
    }
    
    public static func create() -> DetailViewController {
        let storyBoard = UIStoryboard(name: "FirstModuleStory", bundle: Bundle(for: Self.self).resource)
        let vc = storyBoard.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
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

extension DetailViewController : StoryboardInstantiable{}
