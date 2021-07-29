//
//  GalleryViewScreen.swift
//  PhotosAppUITests
//
//  Created by Luiz Eduardo Martins on 29/07/2021.
//

import Foundation
import XCTest

enum identifiers: String {

    case photosView = "PhotosGridView"
    case gotItButton = "Got it"
    case continueButton = "Continue"
    case toolbar = "Toolbar"
    case deleteIconButton = "Delete"
    case deletePhoto = "Delete Photo"
}

class GalleryViewScreen: Base {

    //MARK: - First time using app - Wizard buttons
    private var elementGotItButton: XCUIElement {

        app.buttons[identifiers.gotItButton.rawValue].firstMatch
    }

    private var elementContinueButton: XCUIElement {

        app.buttons[identifiers.continueButton.rawValue].firstMatch
    }

    //MARK: - App elements
    private var elementPhotosView: XCUIElement {

        app.collectionViews[identifiers.photosView.rawValue].firstMatch
    }

    private var elementPhotosQuery: XCUIElementQuery {

        elementPhotosView.cells
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
    var photosCount: Int { elementPhotosQuery.count }

    func tapGotIt() {

        if elementGotItButton.exists {
            elementGotItButton.tap()
        }
    }

    func tapContinue() {

        if elementContinueButton.exists {
            elementContinueButton.tap()
        }
    }

    func tapDeleteIcon() {

        toolbarDeleteButton.tap()
    }

    func tapDeleteButton() {

        deletePhotoButton.tap()
    }

    func selectPhotoAt(index: Int) {

        elementPhotosQuery.element(boundBy: index).tap()
    }

}
