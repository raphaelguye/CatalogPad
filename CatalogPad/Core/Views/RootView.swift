import SwiftUI

// MARK: - RootView

struct RootView: View {

  // MARK: Internal

  var body: some View {

    NavigationSplitView {

      List(menus, id: \.self, selection: $menuSelected) { menu in
        Label(menu.title, systemImage: menu.systemImage)
      }

    } content: {

      VStack {
        switch menuSelected?.type {
        case .products: ProductListView(itemIdSelected: $itemIdSelected)
        case .promos: PromoListView(viewModel: PromoListViewModel())
        case .users: UserListView(viewModel: UserListViewModel())
        default: Text("Choose a section in the sidebar")
        }
      }

    } detail: {

      VStack {
        switch menuSelected?.type {
        case .products: ProductDetailView(productId: itemIdSelected)
        case .promos: PromoDetailView()
        case .users: UserDetailView()
        default: Text("Chose an item in the list")
        }
      }
      
    }
  }

  // MARK: Private

  private struct Menu: Identifiable, Hashable {

    enum MenuType {
      case products
      case promos
      case users
    }

    var id = UUID()
    var title: String
    var systemImage: String

    var type: MenuType
  }

  @State private var menus = [
    Menu(title: "Products", systemImage: "cart.circle", type: .products),
    Menu(title: "Promos", systemImage: "dollarsign.circle", type: .promos),
    Menu(title: "Users", systemImage: "person.crop.circle", type: .users),
  ]

  @State private var menuSelected: Menu?
  @State private var itemIdSelected: UUID?

}

// MARK: - RootView_Previews

struct RootView_Previews: PreviewProvider {
  static var previews: some View {
    RootView()
  }
}
