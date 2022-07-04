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
    if viewModel.product != nil {
      productContent
    } else if viewModel.isLoading {
      ProgressView()
    } else {
      Text("No products have been selected")
    }
  }

  // MARK: Private

  private var productId: UUID?

  private var productContent: some View {
    VStack(alignment: .leading) {
      Text(viewModel.product!.id.uuidString).font(.caption)
      Text(viewModel.product!.title).font(.title)
      Text(viewModel.product!.description).font(.title3)
      Text(viewModel.product!.priceFormatted).font(.title3)
    }
  }

}

// MARK: - ProductDetailView_Previews

struct ProductDetailView_Previews: PreviewProvider {
  static var previews: some View {
    ProductDetailView(productId: UUID())
  }
}
