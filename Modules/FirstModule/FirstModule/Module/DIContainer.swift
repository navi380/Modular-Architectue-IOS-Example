//
//  DIContainer.swift
//  FirstModule
//
//  Created by Naveed Tahir on 01/06/2022.
//

import Foundation

//this will be in networking layer adding just for testing
public class DataTransferService{
    public init(){
        
    }
}



public struct ModuleDependencies {
    let apiDataTransferService: DataTransferService
    
    public init (apiDataTransferService: DataTransferService) {
        self.apiDataTransferService = apiDataTransferService
        
    }
}

public struct Module {

    private let diContainer: DIContainer
    
    public init(dependencies: ModuleDependencies) {
        self.diContainer = DIContainer(dependencies: dependencies)
    }
    
    public func startFirstModuleFlow(in navigationController: UINavigationController) {
        let flow = diContainer.firstModuleFlowCoordinator(navigationController: navigationController)
        flow.start()
    }
    
}



final class DIContainer {
    
    private let dependencies: ModuleDependencies

    // MARK: - Persistent Storage
   
    // MARK: - INIT
    init(dependencies: ModuleDependencies) {
        self.dependencies = dependencies
    }
    
    // MARK: - Use Cases
   
    
    // MARK: - Repositories
    
    
    // MARK: - ControllerIntances
    

    // MARK: - Flow Coordinators
    func firstModuleFlowCoordinator(navigationController: UINavigationController) -> FirstModuleFlowCoordinator {
        return FirstModuleFlowCoordinator(navigationController: navigationController, dependencies: self)
    }
}

extension DIContainer: FirstModuleFlowCoordinatorDependencies {
    
    func makeDetailViewController(value: String) -> UIViewController {
        let vc = DetailViewController.create()
        vc.testLabelVal = value
        return vc
    }
    
}


