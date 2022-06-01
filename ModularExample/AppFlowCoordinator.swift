//
//  AppFlowCordinator.swift
//  ModularExample
//
//  Created by Naveed Tahir on 24/05/2022.
//

import Foundation
import FirstModule
import Core
import UIKit
import SecondModule


protocol Coordinator: AnyObject {
    var appDIContainer: AppDIContainer { get set }
    var navigationController: UINavigationController { get set }
    func start()
}


// MARK: - App start Navigation
final class AppFlowCoordinator: Coordinator {
    
    var appDIContainer: AppDIContainer
    var navigationController: UINavigationController
    
    
    init(appDIContainer: AppDIContainer, navigationController: UINavigationController) {
        self.appDIContainer = appDIContainer
        self.navigationController = navigationController
    }
    
    public func start() {
        // In App Flow we can check if user needs to login, if yes we would run login flow
       
        let firstModule = appDIContainer.makeFirstModuleWithDependency()
        firstModule.startFirstModuleFlow(in: navigationController)
        
        NavigationInjection.shared.navigator = NavigatorImpl()
        
//        let firstController = appDIContainer.makeFirstModule().getFirsViewController()
//        firstController.firstViewControllerCoordinatorDelegate = self
//        navigationController.pushViewController(firstController, animated: false)
    }
}


// MARK: - Inner Module Navigation

// MARK: - First Module
extension AppFlowCoordinator: FirstViewControllerCoordinatorDelegate{
    
    func goToSecondViewController(flow: FirstModuleFlowEnum) {
        switch flow {
        case .moveToSecondViewController:
            let vc = SecondViewController.create()
            navigationController.pushViewController(vc, animated: true)
        }
    }
    
}

public class NavigatorImpl : Navigator{
    public func performNavigation(navigator : UINavigationController, flow : Flow){
        switch flow{
        case .SecondModule:
            navigator.pushViewController(SecondViewController.create(), animated: true)
        }
    }
}


