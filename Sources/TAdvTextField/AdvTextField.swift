// The Swift Programming Language
// https://docs.swift.org/swift-book
import SwiftUI

public struct AdvTextField: View {
    
    public  var image: String? = nil
    public  var placeHolder: String
    public  var cornerRadius: Double
     public var value: Binding<String>
    public  var fontSize: CGFloat = 20
    public  var fontWeight: Font.Weight
    public var onSubmit:() -> Void
   
    
//    @State private var internalValue: String = ""
    public init(image: String? = nil, placeHolder: String, cornerRadius: Double = 20, value: Binding<String>, fontSize: CGFloat = 20, fontWeight: Font.Weight = Font.Weight.regular, onSubmit: @escaping () -> Void) {
        self.image = image
        self.placeHolder = placeHolder
        self.cornerRadius = cornerRadius
        self.value = value
        self.fontSize = fontSize
        self.fontWeight = fontWeight
        self.onSubmit = onSubmit
    }

  public var body: some View {
    
    ZStack(alignment: Alignment(horizontal: .leading, vertical: .center)) {
        TextField(placeHolder, text: self.value) // Use public initializer
        .frame(height: 60)
        .padding(.horizontal,image != nil ? 75: 0)
        .font(.system(size: fontSize, weight: fontWeight))
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
          
        
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

