import XCTest

class PhotosAppUITests: Base {

    let galleryViewSteps = GalleryViewSteps()
    let photoViewSteps = PhotoViewSteps()

    func testDeletePhoto() {

        galleryViewSteps.dismissInicialWizard()
        galleryViewSteps.validateImageCount(quantity: 6)
        galleryViewSteps.selectPhotoToDelete()
        photoViewSteps.dismissFirstTimeOpeningPhoto()
        photoViewSteps.deletePhoto()
        photoViewSteps.backToGallery()
        galleryViewSteps.validateImageCount(quantity: 5)
    }
}
