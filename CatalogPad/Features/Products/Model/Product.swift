import Foundation

struct Product: Identifiable, Hashable {

  var id = UUID()
  var title: String
  var description: String
  var price: Float

}
