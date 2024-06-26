//
//  ___FILEHEADER___
//

import Foundation
import Dependencies

enum ___VARIABLE_productName:identifier___UsecaseCaseKey: DependencyKey {
    static var liveValue: ___VARIABLE_productName:identifier___UseCase = ___VARIABLE_productName:identifier___UseCaseImpl()
}
extension DependencyValues {
    var useCase___VARIABLE_productName:identifier___: ___VARIABLE_productName:identifier___UseCase {
        get { self[___VARIABLE_productName:identifier___UsecaseCaseKey.self] }
        set { self[___VARIABLE_productName:identifier___UsecaseCaseKey.self] = newValue }
    }
}
