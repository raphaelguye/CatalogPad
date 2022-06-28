import SwiftUI

// MARK: - ProductDetailView

struct ProductDetailView: View {

  var productId: UUID?

  init(productId: UUID?) {
    self.productId = productId
  }

  var body: some View {
    if productId != nil {
      Text("You have selected product id \(productId!.uuidString)")
    } else {
      Text("No products have been selected")
    }
  }

}

// MARK: - ProductDetailView_Previews

struct ProductDetailView_Previews: PreviewProvider {
  static var previews: some View {
    ProductDetailView(productId: UUID())
  }
}
