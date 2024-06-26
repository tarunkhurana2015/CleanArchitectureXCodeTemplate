//
//  ___FILEHEADER___
//

import SwiftUI
import ComposableArchitecture

extension ___VARIABLE_productName:identifier___Entity: Hashable {
    public static func == (lhs: ___VARIABLE_productName:identifier___Entity, rhs: ___VARIABLE_productName:identifier___Entity) -> Bool {
        return true
    }
    
    public func hash(into hasher: inout Hasher) {
        
    }
}


public struct ___VARIABLE_productName:identifier___View: View {
    
    let store: StoreOf<___VARIABLE_productName:identifier___ViewReducer>
    public init(store: StoreOf<___VARIABLE_productName:identifier___ViewReducer>) {
        self.store = store
    }
    
    public var body: some View {
        VStack {
            switch store.viewState {
            case .appeared:
                Text("___VARIABLE_productName:identifier___ Appeared")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
            case .loading:
                Text("___VARIABLE_productName:identifier___ Loading...")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
            case let .loaded(entity):
                NavigationStack {
                    VStack {
                        NavigationLink(value: entity) {
                            Text("\(entity)")
                        }
                    }.navigationTitle("___VARIABLE_productName:identifier___")
                        .navigationDestination(for: ___VARIABLE_productName:identifier___Entity.self) { entity in
                        ___VARIABLE_productName:identifier___DetailView(entity: entity)
                        }
                }
                
            case let .error(error):
                Text("___VARIABLE_productName:identifier___ Error: \(error)")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
            }
        } .task {            
            store.send(.loadData)
        } .onAppear {
            store.send(.viewAppeared)
        }
        
    }
}

#Preview {
___VARIABLE_productName:identifier___View(
        store: Store(initialState: ___VARIABLE_productName:identifier___ViewReducer.State()) {
        ___VARIABLE_productName:identifier___ViewReducer()
        }
    )
}
