import Foundation
import Resolver

class ProductDetailViewModel: ObservableObject {

  @Published var product: Product?
  @Published var isLoading = false

  @Injected var productService: ProductService

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

}
