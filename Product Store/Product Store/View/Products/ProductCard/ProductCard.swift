//
//  ProductCard.swift
//  Product Store
//
//  Created by Hagar Usama on 31/05/2023.
//


import SwiftUI

struct ProductImage: View{
    
    var url: String?
    var data: Data?
    var body: some View {
        Text("ff")
    }
    
}

struct TitleLine: View {
    
    var name: String
    var price: Double
    
    var body: some View {
        HStack(alignment: .top, spacing: 4) {
            Text(name )
                .fontWeight(Font.Weight.heavy)
                .foregroundColor(ThemeColor.primary)
                .font(.system(size: 12))
                .multilineTextAlignment(.leading)
                .lineLimit(2)
            Spacer()
            Text(String.init(format: "$%.2f", arguments: [Double(price)]))
                .fontWeight(Font.Weight.heavy)
                .foregroundColor(ThemeColor.secondary1)
                .font(.system(size: 12))
                .multilineTextAlignment(.trailing)
                .frame(width: 50)
                .textCase(.uppercase)
        }
    }
}

struct ProductCard: View {

    var product: Product
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
           CardImage(product: product)

            VStack(alignment: .leading, spacing: 6) {
                
                TitleLine(name: product.name, price: product.price)
                Text(product.description )
                    .font(Font.custom("HelveticaNeue-Bold", size: 11))
                    .foregroundColor(Color.gray)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
            }
            .padding(8)
            
        }
        .background(Color.white)
        .cornerRadius(15)
        .shadow(color: Color.black.opacity(0.2), radius: 7, x: 0, y: 2)
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 180)
    
    } //body
}

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        let product = Product(id: 1, name: "Perfect Headphone for everyday  used", description: "Perfect Headphone for everyday  used", price: 15.00, imageURL: nil, imageData: UIImage(named: "not_found")?.pngData())
        ProductCard(product: product)
    }
}
