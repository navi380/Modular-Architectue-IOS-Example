//
//  AppDIContainer.swift
//  ModularExample
//
//  Created by Naveed Tahir on 24/05/2022.
//

import Foundation
import FirstModule
import Core
import SecondModule

final class AppDIContainer {
    
    // MARK: - Network
    lazy var apiDataTransferService: DataTransferService = {
        let apiDataNetwork = DataTransferService()
        return apiDataNetwork
    }()
    
    
    // MARK: - Feature Modules
    func makeFirstModule() -> FirstModuleModel {
        return FirstModuleModel()
    }
    
    func makeSecondModule() -> SecondModule {
        return SecondModule()
    }
    
    // MARK: - Feature Modules with Dependencies
    func makeFirstModuleWithDependency() -> Module{
        let dependencies = ModuleDependencies(apiDataTransferService: apiDataTransferService)
        return Module(dependencies: dependencies)
    }
    
}


