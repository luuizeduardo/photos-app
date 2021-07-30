import Foundation
import XCTest

class GalleryViewScreen: Base {

    //MARK: - First time using app - Wizard buttons
    private var elementContinueButton: XCUIElement {

        app.buttons[identifiers.continueButton.rawValue].firstMatch
    }

    //MARK: - App elements
    private var elementPhotosView: XCUIElement {

        app.collectionViews[identifiers.galleryView.rawValue].firstMatch
    }

    private var elementPhotosQuery: XCUIElementQuery {

        elementPhotosView.cells
    }

    //MARK: - Computed vars and functions
    var photosCount: Int { elementPhotosQuery.count }

    func tapContinue() {

        if elementContinueButton.exists {
            elementContinueButton.tap()
        }
    }

    func selectPhotoAt(index: Int) {

        elementPhotosQuery.element(boundBy: index).tap()
    }

}
