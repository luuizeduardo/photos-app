import Foundation
import XCTest

class PhotoViewSteps: Base {

    let photoViewScreen = PhotoViewScreen()

    func dismissFirstTimeOpeningPhoto() {

        photoViewScreen.tapGotIt()
    }

    func deletePhoto() {

        photoViewScreen.tapDeleteIcon()
        photoViewScreen.tapDeleteButton()
    }

    func backToGallery() {

        photoViewScreen.tapBackButton()
    }
}
