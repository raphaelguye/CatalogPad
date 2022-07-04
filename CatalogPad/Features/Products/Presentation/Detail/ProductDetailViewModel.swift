import Foundation

class ProductDetailViewModel: ObservableObject {

  // MARK: Internal

  @Published var product: Product?
  @Published var isLoading = false

  func loadProduct(_ productId: UUID?) {
    guard let productId = productId else { return }
    Task {
      await MainActor.run {
        Task {
          isLoading = true
          do {
            self.product = try await productService.fetchProduct(productId: productId)
          } catch {}
          isLoading = false
        }
      }
    }
  }

  // MARK: Private

  private var productService = ProductService()

}
