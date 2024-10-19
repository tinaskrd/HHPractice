//
//  RoomDetailView.swift
//  HHApp
//
//  Created by Tina  on 18.10.24.
//

import SwiftUI

struct RoomDetailView: View {
    let row: ContentView.RowData
    
    var body: some View {
        VStack{
            Text(row.title).font(.title).bold()
            if row.title == "Classic Double Room" {
                
                Text("\n\nOur double rooms offer spacious accommodations spanning of 17 square meter, comfortably hosting up to two persons. They can have a double bed or two single beds joined together. All our rooms offer a garden view and are situated on either the ground or first floor, ensuring a pleasant and relaxing stay.\n\n").padding(.all)
            } else if row.title == "Superior Double Room" {
                
                Text("\n\nOur double rooms offer spacious accommodations spanning of 18 square meter, comfortably hosting up to two persons. They can have a double bed or two single beds joined together. All our rooms offer a garden view and are situated on either the ground or first floor, ensuring a pleasant and relaxing stay.").padding(.all)
                
            } else if row.title == "Suite Up To 3" {
                
                Text("\n\nOur suite spans 27 square meter and comfortably accommodates up to three guests. Guests can enjoy a king bed bedroom and a living area with a convertible couch, providing an additional single bed option. All our suites offer a garden view and are situated on either the ground or first floor, ensuring a pleasant and relaxing stay.").padding(.all)
                
            } else if row.title == "Suite Up To 4" {
                
                Text("\n\nOur suite spans 30 square meter and comfortably accommodates up to four guests. Guests can enjoy a king bed bedroom and a living area with a convertible couch, providing two additional single beds option. All our suites offer a garden view and are situated on either the ground or first floor, ensuring a pleasant and relaxing stay.").padding(.all)
                
            } else {
                
                Text("\n\nIntroducing our brand-new suite, fully renovated in 2024, offering an exclusive and luxurious experience. Spanning 20 square meters, this one-of-a-kind suite is located on the first floor and boasts a private balcony with an outdoor hot tub—perfect for ultimate relaxation. Designed for up to two guests, it features a double bed, ensuring comfort and flexibility. With tranquil garden views and modern amenities, this suite promises an unforgettable stay in a serene setting.").padding(.all)
                
            }
            
            Text("Amenities").font(.headline)
            Text("Air conditioner, Wifi & Internet, Slippers, Shampoo, In-room Refrigerator, Cable TV, Towels, Hair Dryer, Free Parking, Safe Box").padding(.all)
        }.padding(.top, 0)
    }
}

#Preview {
    RoomDetailView(row: ContentView.RowData(imageName: "classicDouble", title: "Classic Double Room"))
}
