import SwiftUI

// MARK: - RootView

struct RootView: View {

  // MARK: Internal

  var body: some View {

    NavigationSplitView {

      List(sections, id: \.self, selection: $sectionSelected) { section in
        Label(section.title, systemImage: section.systemImage)
      }

    } content: {

      VStack {
        switch sectionSelected?.type {
        case .products: ProductListView(itemIdSelected: $detailItemIdSelected)
        case .promos: PromoListView(viewModel: PromoListViewModel())
        case .users: UserListView(viewModel: UserListViewModel())
        default: Text("Choose a section in the sidebar")
        }
      }

    } detail: {

      VStack {
        switch sectionSelected?.type {
        case .products: ProductDetailView(productId: detailItemIdSelected)
        case .promos: PromoDetailView()
        case .users: UserDetailView()
        default: Text("Chose an item in the list")
        }
      }

    }
  }

  // MARK: Private

  @State private var sections = Section.sample
  @State private var sectionSelected: Section?
  @State private var detailItemIdSelected: UUID?

}

// MARK: - RootView_Previews

struct RootView_Previews: PreviewProvider {
  static var previews: some View {
    RootView()
  }
}
