// AdvSecureTextField.swift
// TAdvTextField

import SwiftUI

public struct AdvSecureTextField: View {
  public var image: String? = nil
  public var imageColor: Color = Color.black
  public var imageSize: CGFloat = 20
  public var placeholder: String
  public var value: Binding<String>
  public var keyboardType: UIKeyboardType = .default;
  public var autocapitalization: UITextAutocapitalizationType = .none
  public var fontWeight: Font.Weight = .regular
  public var onSubmit: () -> Void
  public var fontSize: CGFloat = 20
  public var cornerRadius: Double = 20

  @State private var isSecure = true

  public init(
    image: String? = nil,
    imageColor: Color = .black,
    imageSize: CGFloat = 20,
    placeholder: String,
    value: Binding<String>,
    keyboardType: UIKeyboardType = .default,
    autocapitalization: UITextAutocapitalizationType = .none,
    fontWeight: Font.Weight = .regular,
    onSubmit: @escaping () -> Void,
    fontSize: CGFloat = 20,
    cornerRadius: Double = 20
  ) {
    self.image = image
    self.imageColor = imageColor
    self.imageSize = imageSize
    self.placeholder = placeholder
    self.value = value
      self.keyboardType = keyboardType

    self.autocapitalization = autocapitalization
    self.fontWeight = fontWeight
    self.onSubmit = onSubmit
    self.fontSize = fontSize
    self.cornerRadius = cornerRadius
  }

  public var body: some View {
    HStack(alignment: .top) {
      if let image = image {
        Image(systemName: image)
          .font(.system(size: imageSize))
          .foregroundColor(imageColor)
          .padding(.trailing)
      }

      ZStack(alignment: .trailing) {
        if isSecure {
          SecureField(placeholder, text: value)
                .keyboardType(keyboardType)

            .padding(.leading).font(.system(size: fontSize, weight: fontWeight))
            .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
            .autocapitalization(autocapitalization)
            .onChange(of: value.wrappedValue) { _ in onSubmit() }
        } else {
          TextField(placeholder, text: value)
                .keyboardType(keyboardType)

            .padding(.leading).font(.system(size: fontSize, weight: fontWeight))
            .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
            .autocapitalization(autocapitalization)
            .onChange(of: value.wrappedValue) { _ in onSubmit() }
        }
        // Use underscore for unused value
      }

      Button(action: {
        isSecure.toggle()
      }) {
        Image(systemName: isSecure ? "eye.slash" : "eye")
          .foregroundColor(imageColor)
          .font(.system(size: fontSize))
      }
    }
    .padding()
  }
}
