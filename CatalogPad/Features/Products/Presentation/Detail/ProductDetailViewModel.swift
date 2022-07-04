import Foundation

class ProductDetailViewModel: ObservableObject {

  @Published var product: Product?

  func loadProduct(productId: UUID?) {
    guard let productId = productId else { return }
    product = Product(title: "The title of \(productId)", description: "The desc", price: 42.0)
  }

}
