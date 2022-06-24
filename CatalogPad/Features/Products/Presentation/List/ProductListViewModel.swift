import Foundation

class ProductListViewModel: ObservableObject {

  @Published var products: [Product] = [
    Product(title: "Product A", description: "Description of product A", price: 19.90),
    Product(title: "Product B", description: "Description of product B", price: 29.90),
    Product(title: "Product C", description: "Description of product C", price: 39.90),
    Product(title: "Product D", description: "Description of product D", price: 49.90),
    Product(title: "Product E", description: "Description of product E", price: 59.90),
  ]

}
