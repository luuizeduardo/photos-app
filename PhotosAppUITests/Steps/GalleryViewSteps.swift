import Foundation
import XCTest

class GalleryViewSteps: Base {

    let galleryViewScreen = GalleryViewScreen()

    func dismissInicialWizard() {
        
        galleryViewScreen.tapContinue()
    }

    func selectPhotoToDelete() {

        galleryViewScreen.selectPhotoAt(index: 1)
    }

    func validateImageCount(quantity: Int) {

        XCTAssertEqual(galleryViewScreen.photosCount, quantity)
    }

}
