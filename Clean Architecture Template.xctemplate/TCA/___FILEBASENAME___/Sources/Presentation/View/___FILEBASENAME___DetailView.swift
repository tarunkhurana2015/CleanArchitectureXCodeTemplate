//
//  ___FILEHEADER___
//

import SwiftUI
import ComposableArchitecture

public struct ___VARIABLE_productName:identifier___DetailView: View {
    
    let entity: ___VARIABLE_productName:identifier___Entity
    public init(entity: ___VARIABLE_productName:identifier___Entity) {
        self.entity = entity
    }
    
    public var body: some View {
        VStack {
                Text("\(entity)")
        }
    }
}

#Preview {
___VARIABLE_productName:identifier___DetailView(entity: ___VARIABLE_productName:identifier___Entity())
}
