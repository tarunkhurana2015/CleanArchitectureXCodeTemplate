//
//  ___FILEHEADER___
//

import Foundation
import Dependencies

enum ___VARIABLE_productName:identifier___RepositoryKey: DependencyKey {
    static var liveValue: any ___VARIABLE_productName:identifier___RepositoryProtocol = ___VARIABLE_productName:identifier___Repository()
    static var testValue: any ___VARIABLE_productName:identifier___RepositoryProtocol = Mock___VARIABLE_productName:identifier___Repository()
    static var previewValue: any ___VARIABLE_productName:identifier___RepositoryProtocol = Preview___VARIABLE_productName:identifier___Repository()
}

extension DependencyValues {
    public var repository___VARIABLE_productName:identifier___: ___VARIABLE_productName:identifier___RepositoryProtocol {
        get { self[___VARIABLE_productName:identifier___RepositoryKey.self] }
        set { self[___VARIABLE_productName:identifier___RepositoryKey.self] = newValue }
    }
}
