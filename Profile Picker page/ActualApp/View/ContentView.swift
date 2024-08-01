//
//  ContentView.swift
//  ActualApp
//
//  Created by DPI Student 054 on 7/23/24.
//


import SwiftUI

struct LabelledPickerSwiftUIView: View {
    var label : String
    var data : [String]
    @Binding var selectedItem : String
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 25)
                .foregroundStyle(.clear)
                .frame(width: 300, height: 80)
                .background(.black)
                .overlay(content: {
                    RoundedRectangle(cornerRadius: 25)
                        .stroke(.white,lineWidth: 2)
                })
            
            ZStack{
                Circle()
                    .foregroundStyle(.black)
                    .frame(width: 60, height: 60)
                Text(label)
                    .font(.system(size: 24))
                    .fontWeight(.medium)
                    .foregroundStyle(.white)
            }
            .offset(x:-150)
            
            UniversalPickerFile(data: data, selectedItem: $selectedItem)
                .frame(width: 180)
        }
    }
}

#Preview {
    LabelledPickerSwiftUIView(label: "grade", data: PickerData.grade, selectedItem: .constant("5th"))
}
