import Foundation
import Resolver

extension Resolver: ResolverRegistering {

  public static func registerAllServices() {
    register { FakeProductService() }.implements(ProductService.self).scope(.application) // Singleton
  }

}
