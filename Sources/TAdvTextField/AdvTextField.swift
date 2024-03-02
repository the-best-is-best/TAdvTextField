// The Swift Programming Language
// https://docs.swift.org/swift-book
import SwiftUI
public struct AdvTextField: View {

    var image: String? = nil
    var placeHolder: String
    var cornerRadius: Double = 12
    @Binding var value: String
    var fontSize: CGFloat = 20
    var fontWeight: Font.Weight = Font.Weight.regular
    var onSubmit: () -> Void

  public var body: some View {
    ZStack(alignment: Alignment(horizontal: .leading, vertical: .center)) {
      TextField(placeHolder, text: $value) // Use public initializer
        .frame(height: 60)
        .padding(.horizontal, 75)
        .font(.system(size: fontSize, weight: fontWeight))
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
        .onChange(of: value) { newValue in
          onSubmit()
        }
      if (image != nil) {
        Image(systemName: image!)
          .font(.system(size: 30))
          .foregroundColor(.black)
          .frame(width: 60, height: 60)
          .padding(.horizontal)
      }
    }
    .padding()
  }
}

