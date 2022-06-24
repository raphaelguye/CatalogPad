//
// Created by Raphael Guye on 24.06.22
// https://github.com/raphaelguye
//

import SwiftUI

// MARK: - ProductListView

struct ProductListView: View {

  var viewModel: ProductListViewModel

  init(viewModel: ProductListViewModel) {
    self.viewModel = viewModel
  }

  var body: some View {
    Text("Products list")
  }
}

// MARK: - ProductListView_Previews

struct ProductListView_Previews: PreviewProvider {
  static var previews: some View {
    ProductListView(viewModel: ProductListViewModel())
  }
}
