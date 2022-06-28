import SwiftUI

// MARK: - ProductListView

struct ProductListView: View {

  @State var viewModel = ProductListViewModel()
  @Binding var itemIdSelected: UUID?

  var body: some View {
    List {
      ForEach(0..<viewModel.products.count) { idx in
        Button {
          itemIdSelected = viewModel.products[idx].id
        } label: {
          Text(viewModel.products[idx].title)
        }
      }
    }
    .navigationTitle("Products")
  }
}

// MARK: - ProductListView_Previews

struct ProductListView_Previews: PreviewProvider {
  static var previews: some View {
    ProductListView(itemIdSelected: .constant(UUID()))
  }
}
