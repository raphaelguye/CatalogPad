import Foundation
import Resolver

class ProductListViewModel: ObservableObject {

  // MARK: Lifecycle

  init() {
    loadProducts()
  }

  // MARK: Internal

  @Published var products: [Product]?

  @Injected var productService: ProductService

  // MARK: Private

  private func loadProducts() {
    Task {
      let products = try await productService.fetchProducts()
      await MainActor.run {
        self.products = products
      }
    }
  }

}
