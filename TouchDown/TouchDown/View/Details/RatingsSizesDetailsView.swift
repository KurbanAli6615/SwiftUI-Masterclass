//
//  RatingsSizesDetailsView.swift
//  TouchDown
//
//  Created by KurbanAli on 06/12/21.
//

import SwiftUI

struct RatingsSizesDetailsView: View {
    //  MARK: - Properties
    
    let sizes = ["XS","S","M","L","XL"]
    //  MARK: - Body

    var body: some View {
        HStack(alignment: .top, spacing: 3) {
            
            VStack(alignment: .leading, spacing: 3) {
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: .center, spacing: 3) {
                    ForEach(1...5, id: \.self) { item in
                        Button {
                            
                        } label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28)
                                .background(colorGray.cornerRadius(5))
                                .foregroundColor(.white)
                            
                        }

                    }
                }
            }
            Spacer()
            
            VStack(alignment: .trailing, spacing: 3) {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: .center, spacing: 5) {
                    ForEach(sizes ,id: \.self) { size in
                        Button {
                            
                        } label: {
                            Text(size)
                                .font(.footnote)
                                .fontWeight(.black)
                                .foregroundColor(colorGray)
                                .frame(width: 28, height: 28)
                                .background(Color.white.cornerRadius(5))
                                .background(
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(colorGray, lineWidth: 2)
                                )
                        }

                    }
                }
            }
        }//:HStack
    }
}

//  MARK: - Preview

struct RatingsSizesDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        RatingsSizesDetailsView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
