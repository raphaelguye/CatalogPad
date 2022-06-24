import SwiftUI

// MARK: - UserListView

struct UserListView: View {

  var viewModel: UserListViewModel

  init(viewModel: UserListViewModel) {
    self.viewModel = viewModel
  }

  var body: some View {
    Text("Users List")
  }
}

// MARK: - UserListView_Previews

struct UserListView_Previews: PreviewProvider {
  static var previews: some View {
    UserListView(viewModel: UserListViewModel())
  }
}
