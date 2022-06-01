//
//  SecondModule.swift
//  Pods
//
//  Created by Naveed Tahir on 25/05/2022.
//

import Foundation

public struct SecondModule {
    
    public init() {
        
    }
    
    public func getSecondViewController() -> UIViewController {
        let vc = SecondViewController.create()
        return vc
    }
}
