//
//  ___FILEHEADER___
//

import Foundation
import Dependencies

protocol ___VARIABLE_productName:identifier___UseCase {
    func execute() async throws -> ___VARIABLE_productName:identifier___Entity
}

public struct ___VARIABLE_productName:identifier___UseCaseImpl: ___VARIABLE_productName:identifier___UseCase {
    
    // MARK: Depdency Inversion Principle
    /*
     NOTES:
     - high level modules should not depend on the low level modules, but should depdend on the abstraction
     - If a high level module depends on the low level module then the code becomes tightly coupled.
     - Changes in one class should not break another class.

     */
    /// Domain Layer <- Data Repositories Layer
    @Dependency(\.repository___VARIABLE_productName:identifier___) var repository___VARIABLE_productName:identifier___
    
    func execute() async throws -> ___VARIABLE_productName:identifier___Entity {
        throw ___VARIABLE_productName:identifier___Error.unknown
    }
}
