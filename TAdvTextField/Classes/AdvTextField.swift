// The Swift Programming Language
// https://docs.swift.org/swift-book
import SwiftUI

public struct AdvTextField: View {
    
    public  var image: String? = nil
    public  var placeHolder: String
    public  var cornerRadius: Double
    public var value: Binding<String>
    public  var fontSize: CGFloat
    public  var fontWeight: Font.Weight
    public var autoCaoitalization:UITextAutocapitalizationType
    public var onSubmit:() -> Void
   

    
    
    public init(image: String? = nil, placeHolder: String, cornerRadius: Double = 20, value: Binding<String>, fontSize: CGFloat = 20, fontWeight: Font.Weight = Font.Weight.regular, autoCaoitalization: UITextAutocapitalizationType=UITextAutocapitalizationType.none
                , onSubmit: @escaping () -> Void) {
        self.image = image
        self.placeHolder = placeHolder
        self.cornerRadius = cornerRadius
        self.value = value
        self.fontSize = fontSize
        self.fontWeight = fontWeight
        self.autoCaoitalization = autoCaoitalization
        self.onSubmit = onSubmit

    }

    public var body: some View {
    
        ZStack(alignment: Alignment(horizontal: .leading, vertical: .top)) {
        TextField(placeHolder, text: self.value) // Use public initializer
        .padding(.leading, image != nil ? 70 : 0)
        
        .font(.system(size: fontSize, weight: fontWeight))
        .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
        .autocapitalization(autoCaoitalization).onChange(of: value.wrappedValue) {
            _ in
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

