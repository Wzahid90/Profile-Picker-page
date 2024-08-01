

import SwiftUI

class PickerViewModelFile : ObservableObject{
    @Published var selectedGrade = "5th"
    @Published var selectedName = "Giraffe"
    @Published var image : Image?
    @Published var isShowingPhoto = false
    @Published var inputImage : UIImage?
    
    func loadImage (){
        guard let inputImage = inputImage else{return}
        image = Image(uiImage: inputImage)
    }
    
    func isShowingPhotoToggle(){
        isShowingPhoto.toggle()
    }
}
