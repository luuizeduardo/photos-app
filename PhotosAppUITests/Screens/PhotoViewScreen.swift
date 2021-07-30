import Foundation
import XCTest

class PhotoViewScreen: Base {

    //MARK: - First time using app - Wizard buttons
    private var elementGotItButton: XCUIElement {

        app.buttons[identifiers.gotItButton.rawValue].firstMatch
    }

    //MARK: - App elements
    private var backToAllPhotos: XCUIElement {

        app.navigationBars.buttons[identifiers.backToAllPhotos.rawValue].firstMatch
    }
    
    private var toolbar: XCUIElement {

        app.toolbars[identifiers.toolbar.rawValue].firstMatch
    }

    private var toolbarDeleteButton: XCUIElement {

        toolbar.buttons[identifiers.deleteIconButton.rawValue].firstMatch
    }

    private var deletePhotoButton: XCUIElement {

        app.scrollViews.buttons[identifiers.deletePhoto.rawValue].firstMatch
    }

    //MARK: - Computed vars and functions
    func tapGotIt() {

        if elementGotItButton.exists {
            elementGotItButton.tap()
        }
    }

    func tapDeleteIcon() {

        toolbarDeleteButton.tap()
    }

    func tapDeleteButton() {

        deletePhotoButton.tap()
    }

    func tapBackButton() {

        backToAllPhotos.tap()
    }
}
