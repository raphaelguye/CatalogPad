# CatalogPad
Try the new [NavigationSplitView](https://developer.apple.com/documentation/swiftui/navigationsplitview/) released with iOS 16 sdk.

## Layout
Split the view in three : 
- A list of sections in the sidebar
- A list of items from the selected section
- A detail of the item selected.

<img src="https://user-images.githubusercontent.com/1267845/177150009-f20d56a2-3aa4-4784-8d18-b3b37f1c1052.png" width="800" />

## RootView
The [RootView](https://github.com/raphaelguye/CatalogPad/blob/main/CatalogPad/Core/Views/RootView.swift) is in charge to display the appropriated Views considering the user's selection

    var body: some View {

      NavigationSplitView {

        List(sections, id: \.self, selection: $sectionSelected) { section in
          Label(section.title, systemImage: section.systemImage)
        }

      } content: {
        //
        // Display the appropriate list of items
        //

      } detail: {
        //
        // Display the appropriate item selected
        //
      }

    }
    
## Sections
The sections are defined by a [static list](https://github.com/raphaelguye/CatalogPad/blob/main/CatalogPad/Core/Model/Section.swift#L21) and are used directly by the [RootView](https://github.com/raphaelguye/CatalogPad/blob/main/CatalogPad/Core/Views/RootView.swift#L48).
