import Foundation

class ProductListViewModel: ObservableObject {

  // MARK: Lifecycle

  init() {
    loadProducts()
  }

  // MARK: Internal

  @Published var products: [Product]?

  // MARK: Private

  private var productService = ProductService()

  private func loadProducts() {
    Task {
      let products = try await productService.fetchProducts()
      await MainActor.run {
        self.products = products
      }
    }
  }

}
