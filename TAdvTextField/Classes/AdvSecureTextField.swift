//
//  AdvSecureTextField.swift
//  TAdvTextField
//
//  Created by 52ndSolution on 03/03/2024.
//

import SwiftUI

public struct AdvSecureTextField: View {
    var image: String? = nil
    var placeHolder: String
    var value:Binding<String>
    var autoCaoitalization = UITextAutocapitalizationType.none
    var fontWeight: Font.Weight = Font.Weight.regular
    var onSubmit:  () -> Void
    public  var fontSize: CGFloat
    public  var cornerRadius: Double

    @State  private var isSecure = true
    
    init(image: String? = nil, placeHolder: String, value: Binding<String>, autoCaoitalization: UITextAutocapitalizationType = UITextAutocapitalizationType.none, fontWeight: Font.Weight, onSubmit: @escaping () -> Void, fontSize: CGFloat, cornerRadius: Double, isSecure: Bool = true) {
        self.image = image
        self.placeHolder = placeHolder
        self.value = value
        self.autoCaoitalization = autoCaoitalization
        self.fontWeight = fontWeight
        self.onSubmit = onSubmit
        self.fontSize = fontSize
        self.cornerRadius = cornerRadius
        self.isSecure = isSecure
    }
    public var body: some View {
        ZStack(alignment: Alignment(horizontal: .leading, vertical: .center)){
            if(isSecure){
                SecureField(NSLocalizedString(placeHolder, comment: placeHolder), text: value).frame(height: 60).padding(.leading, image != nil ? 70 : 0)
                    .font(.system(size: fontSize, weight: fontWeight)).clipShape(RoundedRectangle(cornerRadius: cornerRadius)).onChange(of: value.wrappedValue) { newValue in
                    onSubmit()
                }.autocapitalization(autoCaoitalization)
                Spacer()
                
                    .padding(.trailing, 8)
            }else{
                TextField(NSLocalizedString(placeHolder, comment: placeHolder), text: value).frame(height: 60).padding(.leading, image != nil ? 70 : 0).font(.system(size: fontSize, weight: fontWeight)).clipShape(RoundedRectangle(cornerRadius:cornerRadius)).onChange(of: value.wrappedValue) { newValue in
                    onSubmit()
                }.autocapitalization(autoCaoitalization)
                Spacer()
                
                    .padding(.trailing, 8)
            }
            Button(action: {
               isSecure.toggle()
           }) {
               Image(systemName: isSecure ? "eye.slash" : "eye")
                   .foregroundColor(.black).frame(width: 60, height: 60).padding(.horizontal)
           }.padding(.leading, UIScreen.main.bounds.width - 160)

            if(image != nil){
                Image(systemName: image!).font(.system(size: 30)).foregroundColor(.black).frame(width: 60, height: 60).padding(.horizontal)
            }
       }.padding()
    }
}

