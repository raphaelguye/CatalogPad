import SwiftUI

// MARK: - ProductDetailView

struct ProductDetailView: View {

  // MARK: Lifecycle

  init(productId: UUID?) {
    guard let productId = productId else { return }
    viewModel.loadProduct(productId)
  }

  // MARK: Internal

  @ObservedObject var viewModel = ProductDetailViewModel() // Should be a StateObject, but doesn't work

  var body: some View {
    VStack {
      if viewModel.product != nil {
        Text(viewModel.product!.id.uuidString)
        Text(viewModel.product!.title)
        Text(viewModel.product!.description)
        Text("USD \(viewModel.product!.price)")
      } else if viewModel.isLoading {
        ProgressView()
      } else {
        Text("No products have been selected")
      }
    }
  }

  // MARK: Private

  private var productId: UUID?

}

// MARK: - ProductDetailView_Previews

struct ProductDetailView_Previews: PreviewProvider {
  static var previews: some View {
    ProductDetailView(productId: UUID())
  }
}
