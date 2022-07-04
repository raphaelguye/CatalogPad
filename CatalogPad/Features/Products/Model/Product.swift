import Foundation

// MARK: - Product

struct Product: Identifiable, Hashable {

  var id = UUID()
  var title: String
  var description: String
  var price: Float

}

extension Product {

  var priceFormatted: String {
    get {
      "USD \(String(format: "%.2f", price))"
    }
  }

}
