// AdvTextField.swift

import SwiftUI

public struct AdvTextField: View {
  public var image: String? = nil
  public var imageSize: CGFloat = 20
  public var imageColor: Color = Color.black
  public var placeholder: String
  public var cornerRadius: Double = 20
  public var value: Binding<String>
  public var keyboardType: UIKeyboardType = .default;
  public var fontSize: CGFloat = 20
  public var fontWeight: Font.Weight = .regular
  public var autocapitalization: UITextAutocapitalizationType = .none
  public var onSubmit: () -> Void

  public init(
    image: String? = nil,
    imageSize: CGFloat = 20,
    imageColor: Color = .black,
    placeholder: String,
    cornerRadius: Double = 20,
    value: Binding<String>,
    keyboardType: UIKeyboardType = .default,
    fontSize: CGFloat = 20,
    fontWeight: Font.Weight = .regular,

    autocapitalization: UITextAutocapitalizationType = .none,
    onSubmit: @escaping () -> Void
  ) {
    self.image = image
    self.imageSize = imageSize
    self.imageColor = imageColor
    self.placeholder = placeholder
    self.cornerRadius = cornerRadius
    self.value = value
      self.keyboardType = keyboardType

    self.fontSize = fontSize
    self.fontWeight = fontWeight
    self.autocapitalization = autocapitalization
    self.onSubmit = onSubmit
  }

  public var body: some View {
    HStack(alignment: .top) {
      if let image = image {
        Image(systemName: image)
          .font(.system(size: imageSize))
          .foregroundColor(imageColor)
          .padding(.trailing)
      }

      TextField(placeholder, text: value)
            .keyboardType(keyboardType)
        .padding(.leading)
        .font(.system(size: fontSize, weight: fontWeight))
        .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
        .autocapitalization(autocapitalization)
        .onChange(of: value.wrappedValue) { _ in onSubmit() } // Use underscore for unused value
    }
    .padding()
  }
}
