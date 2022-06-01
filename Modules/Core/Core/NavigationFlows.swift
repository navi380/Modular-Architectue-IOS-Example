//
//  NavigationFlows.swift
//  Core
//
//  Created by Naveed Tahir on 01/06/2022.
//

import Foundation


public enum FirstModuleFlowEnum {
    case moveToSecondViewController
}

public enum Flow{
    case SecondModule
}

public protocol Navigator{
    func performNavigation(navigator : UINavigationController, flow : Flow)
}

public class NavigationInjection{
    public static var shared = NavigationInjection()
    public var navigator : Navigator? = nil
    private init(){
        
    }
}
