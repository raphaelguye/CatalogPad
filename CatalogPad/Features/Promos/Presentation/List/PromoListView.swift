import SwiftUI

// MARK: - PromoListView

struct PromoListView: View {

  var viewModel: PromoListViewModel

  init(viewModel: PromoListViewModel) {
    self.viewModel = viewModel
  }

  var body: some View {
    Text("Promos list")
  }
}

// MARK: - PromoListView_Previews

struct PromoListView_Previews: PreviewProvider {
  static var previews: some View {
    PromoListView(viewModel: PromoListViewModel())
  }
}
