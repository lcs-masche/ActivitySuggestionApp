//
//  LinkView.swift
//  ActivitySuggestionApp
//
//  Created by Moritz Conrad Asche on 2021-10-14.
//

import SwiftUI

struct LinkView: View {
    var body: some View {
        HStack{
            Image(systemName: "safari")
                .font(.system(size: 15, weight: .black))
            Link(destination: URL(string: "\(link)")!, label: {
                Text("See more")
            })
        }
        .font(.headline)
        .foregroundColor(.black)
        .padding(.vertical, 20)
        .frame(maxWidth: .infinity)
        .background {
            RoundedRectangle(cornerRadius: 5)
        }
        .padding(.horizontal, 15)
        .foregroundColor(.white)
    }
}

struct LinkView_Previews: PreviewProvider {
    static var previews: some View {
        LinkView()
    }
}
