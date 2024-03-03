//
//  AdvSecureTextField.swift
//  TAdvTextField
//
//  Created by 52ndSolution on 03/03/2024.
//

import SwiftUI

public struct AdvSecureTextField: View {
    var image: String? = nil
     var imageColor: Color
    var imageSize: CGFloat
    var placeHolder: String
    var value:Binding<String>
    var autoCaoitalization = UITextAutocapitalizationType.none
    var fontWeight: Font.Weight = Font.Weight.regular
    var onSubmit:  () -> Void
    public  var fontSize: CGFloat
    public  var cornerRadius: Double

    @State  private var isSecure = true
    
    public  init(image: String? = nil,imageSize:CGFloat = 20 ,imageColor:Color = Color.black, placeHolder: String, value: Binding<String>,  fontSize: CGFloat = 20, cornerRadius: Double = 20, fontWeight: Font.Weight = Font.Weight.regular,autoCaoitalization: UITextAutocapitalizationType = UITextAutocapitalizationType.none, onSubmit: @escaping () -> Void) {
        self.image = image
        self.imageSize = imageSize
        self.imageColor  = imageColor
        self.placeHolder = placeHolder
        self.value = value
        self.autoCaoitalization = autoCaoitalization
        self.fontWeight = fontWeight
        self.onSubmit = onSubmit
        self.fontSize = fontSize
        self.cornerRadius = cornerRadius
    }
    public var body: some View {
        ZStack(alignment: Alignment(horizontal: .leading, vertical: .top)){
            if(isSecure){
                SecureField(placeHolder, text: value)
                    .padding(.leading, image != nil ? 70 : 0)
                    .font(.system(size: fontSize, weight: fontWeight))
                    .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
                    .onChange(of: value.wrappedValue) { newValue in
                    onSubmit()
                }.autocapitalization(autoCaoitalization)
               
            }else{
                TextField(placeHolder, text: value).padding(.leading, image != nil ? 70 : 0).font(.system(size: fontSize, weight: fontWeight)).clipShape(RoundedRectangle(cornerRadius:cornerRadius)).onChange(of: value.wrappedValue) { newValue in
                    onSubmit()
                }.autocapitalization(autoCaoitalization)
            
            }
            Button(action: {
               isSecure.toggle()
           }) {
               Image(systemName: isSecure ? "eye.slash" : "eye")
                   .foregroundColor(imageColor).font(.system(size: fontSize)).padding(.horizontal)
           }.padding(.leading, UIScreen.main.bounds.width - 160)

            if(image != nil){
                Image(systemName: image!).font(.system(size: imageSize)).foregroundColor(imageColor).padding(.horizontal)
            }
       }.padding()
    }
}

