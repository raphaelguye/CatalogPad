import SwiftUI

// MARK: - RootView

struct RootView: View {

  // MARK: Internal

  var body: some View {
    NavigationSplitView {
      List(menus, selection: $menuSelected) { menu in
        Label(menu.title, systemImage: menu.systemImage)
      }
    } content: {
      Text("Content")
    } detail: {
      Text("Detail")
    }
  }

  // MARK: Private

  private struct Menu: Identifiable, Hashable {
    var id: String
    var title: String
    var systemImage: String
  }

  @State private var menus = [
    Menu(id: "1", title: "Products", systemImage: "cart.circle"),
    Menu(id: "2", title: "Promos", systemImage: "dollarsign.circle"),
    Menu(id: "3", title: "Users", systemImage: "person.crop.circle"),
  ]

  @State private var menuSelected: Menu?

}

// MARK: - RootView_Previews

struct RootView_Previews: PreviewProvider {
  static var previews: some View {
    RootView()
  }
}
