import SwiftUI

// MARK: - ProductListView

struct ProductListView: View {

  @State var viewModel = ProductListViewModel()
  @State var selectedProduct: Product?

  var body: some View {
    /*List(viewModel.products, id: \.self, selection: $selectedProduct) { product in
      Text(product.title)
    }*/
    ForEach(0..<viewModel.products.count) { idx in
      Text(viewModel.products[idx].title)
    }
    .navigationTitle("Products")
  }
}

// MARK: - ProductListView_Previews

struct ProductListView_Previews: PreviewProvider {
  static var previews: some View {
    ProductListView(viewModel: ProductListViewModel())
  }
}
