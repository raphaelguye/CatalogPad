import Foundation

// MARK: - SectionType

enum SectionType {
  case products
  case promos
  case users
}

// MARK: - Section

struct Section: Identifiable, Hashable {

  var id = UUID()
  var title: String
  var systemImage: String

  var type: SectionType

  static let sample: [Section] = [
    Section(title: "Products", systemImage: "cart.circle", type: .products),
    Section(title: "Promos", systemImage: "dollarsign.circle", type: .promos),
    Section(title: "Users", systemImage: "person.crop.circle", type: .users),
  ]

}
