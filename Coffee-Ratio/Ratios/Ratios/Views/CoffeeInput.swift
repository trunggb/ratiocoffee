//
//  CoffeeInput.swift
//  Ratios
//
//  Created by John Peden on 2/27/20.
//  Copyright © 2020 John Peden. All rights reserved.
//

import Foundation
import SwiftUI

struct CoffeeInput: View {

    // TODO: @Binding must be anotate because it is same as two-way binding data
    @Binding var amount: String

    var body: some View {
        VStack {
            Text("How much coffee?")
                .bold()
                .fixedSize()
                .foregroundColor(Color("Text"))
                .font(.system(size: 24))

            // TODO 3: remove disable to be able input from keyboard
            TextField("", text: $amount)
                .frame(width: CGFloat(150), height: CGFloat(39))
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color("Primary"), lineWidth: 3)
                )
                .multilineTextAlignment(.center)
                .disabled(true)

            Text("grams")
                .fixedSize()
                .foregroundColor(Color("Text"))
                .font(.system(size: 14))

        }
    }
}
