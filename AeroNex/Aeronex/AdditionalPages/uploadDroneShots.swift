//
//  uploadDroneShots.swift
//  Aeronex
//
//  Created by Devansh Agarwal on 27/02/24.
//

import SwiftUI

struct uploadDroneShots: View {
    @State private var isShowingImagePicker = false

       var body: some View {
           NavigationView {
               VStack {
                   HStack(spacing: 10) {
                       Image("cloudArrow")
                           .resizable()
                           .frame(width: 50, height: 50)
                           .onTapGesture {
                               isShowingImagePicker = true
                           }
                       Text("Upload your Drone Shots here")
                           .font(.system(size: 16, weight: .semibold))
                   }
                   Spacer()
               }
               
               .sheet(isPresented: $isShowingImagePicker) {
                   ImageUploadView()
               }
           }
       }
   }

struct ImageUploadView: View {
    @State private var selectedImages: [UIImage] = []
    @State private var isShowingImagePicker = false
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack {
            Button(action: {
                isShowingImagePicker = true
            }) {
                Text("Select Images")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(8)
            }
            Spacer()
            if !selectedImages.isEmpty {
                ScrollView {
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 10) {
                        ForEach(selectedImages, id: \.self) { image in
                            Image(uiImage: image)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 150, height: 150)
                                .clipped()
                        }
                    }
                    .padding()
                }
            }
            HStack {
                Button(action: {
                    // Implement your cancel logic here
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Text("Cancel")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.red)
                        .cornerRadius(8)
                }
                Spacer()
                Button(action: {
                    // Implement your save logic here
                }) {
                    Text("Done")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.green)
                        .cornerRadius(8)
                }
            }
            .padding()
        }
        .navigationBarTitle("Upload Images")
        .sheet(isPresented: $isShowingImagePicker) {
            ImagePicker(selectedImages: $selectedImages)
        }
    }
}

struct ImagePicker: UIViewControllerRepresentable {
    @Binding var selectedImages: [UIImage]

    func makeUIViewController(context: Context) -> UIImagePickerController {
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = context.coordinator
        imagePicker.sourceType = .photoLibrary
        imagePicker.allowsEditing = false
        imagePicker.mediaTypes = ["public.image"]
        return imagePicker
    }

    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {}

    func makeCoordinator() -> Coordinator {
        return Coordinator(parent: self)
    }

    class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        let parent: ImagePicker

        init(parent: ImagePicker) {
            self.parent = parent
        }

        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let image = info[.originalImage] as? UIImage {
                parent.selectedImages.append(image)
            }
            picker.dismiss(animated: true, completion: nil)
        }

        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            picker.dismiss(animated: true, completion: nil)
        }
    }
}


#Preview {
    uploadDroneShots()
}
