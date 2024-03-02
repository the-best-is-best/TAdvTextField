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
    public var onSubmit: (String) -> Void
    public var style: any TextFieldStyle
    
//    @State private var internalValue: String = ""
    public init(image: String? = nil, placeHolder: String, cornerRadius: Double = 20, value: Binding<String>, fontSize: CGFloat = 20, fontWeight: Font.Weight = Font.Weight.regular, onSubmit: @escaping (String) -> Void, style:any TextFieldStyle = DefaultTextFieldStyle()) {
        self.image = image
        self.placeHolder = placeHolder
        self.cornerRadius = cornerRadius
        self.value = value
        self.fontSize = fontSize
        self.fontWeight = fontWeight
        self.onSubmit = onSubmit
        self.style = style
    }

  public var body: some View {
      ZStack{
          ZStack(alignment: Alignment(horizontal: .leading, vertical: .center)) {
              TextField(placeHolder, text: self.value) // Use public initializer
                  .frame(height: 60)
                  .padding(.horizontal, 75)
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
          }.textFieldStyle(self.style)            
      }
    .padding()
  }
    
  
}

