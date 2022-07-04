import Foundation

// MARK: - ProductService

protocol ProductService {
  func fetchProducts() async throws -> [Product]
  func fetchProduct(productId: UUID) async throws -> Product?
}

// MARK: - FakeProductService

struct FakeProductService : ProductService {

  private var products: [Product] = [
    Product(id: UUID(), title: "Product A", description: "Description of product A", price: 19.90),
    Product(id: UUID(), title: "Product B", description: "Description of product B", price: 29.90),
    Product(id: UUID(), title: "Product C", description: "Description of product C", price: 39.90),
    Product(id: UUID(), title: "Product D", description: "Description of product D", price: 49.90),
    Product(id: UUID(), title: "Product E", description: "Description of product E", price: 59.90),
  ]

  func fetchProducts() async throws -> [Product] {
    try await Task.sleep(nanoseconds: 500_000_000)
    return products
  }

  func fetchProduct(productId: UUID) async throws -> Product? {
    try await Task.sleep(nanoseconds: 500_000_000)
    return products.first(where: { $0.id == productId })
  }

}
