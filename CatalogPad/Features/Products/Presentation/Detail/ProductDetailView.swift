import SwiftUI

// MARK: - ProductDetailView

struct ProductDetailView: View {

  @ObservedObject var viewModel = ProductDetailViewModel()

  init(productId: UUID?) {
    viewModel.loadProduct(productId: productId)
  }

  var body: some View {
    if viewModel.product != nil {
      Text("You have selected product id \(viewModel.product!.id)")
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
