//
//  FirstModule.swift
//  Pods
//
//  Created by Naveed Tahir on 25/05/2022.
//

import Foundation



public class FirstModuleModel {
    
    let vc: FirstViewController?
    
    public init() {
        vc = FirstViewController.create()
    }
    
    public func getFirsViewController() -> FirstViewController {
        return vc ?? FirstViewController.create()
    }
    
}


// MARK: - Inner Navigation Flow Coordinator
protocol FirstModuleFlowCoordinatorDependencies  {
    func makeDetailViewController(value: String) -> UIViewController
}

final class FirstModuleFlowCoordinator {

    private weak var navigationController: UINavigationController?
    private let dependencies: FirstModuleFlowCoordinatorDependencies

    private weak var firstVC: FirstViewController?
    
    init(navigationController: UINavigationController,
         dependencies: FirstModuleFlowCoordinatorDependencies) {
        self.navigationController = navigationController
        self.dependencies = dependencies
    }
    
    public func start(){
        let vc = FirstViewController.create()
        navigationController?.pushViewController(vc, animated: true)
    }

    private func showDetail(value: String) {
        let vc = dependencies.makeDetailViewController(value: value)
        navigationController?.pushViewController(vc, animated: true)
    }

}
