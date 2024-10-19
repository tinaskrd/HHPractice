//
//  ContentView.swift
//  HHApp
//
//  Created by Tina  on 15.10.24.
//

import SwiftUI





struct ContentView: View {
    
    struct RowData: Identifiable {
           let id = UUID() // unique identifier for each row
           let imageName: String
           let title: String
    }
    
    let rows: [RowData] = [
            RowData(imageName: "classicDouble", title: "Classic Double Room"),
            RowData(imageName: "superiorDouble", title: "Superior Double Room"),
            RowData(imageName: "suiteUpToThree", title: "Suite Up To 3"),
            RowData(imageName: "suiteUpToFour", title: "Suite Up To 4"),
            RowData(imageName: "outdoorSuite", title: "Suite With Hot Tub")
        ]
    
    var body: some View {
        NavigationView {
            VStack {
                TabView {
                    VStack {
                        Text("Welcome to Hotel Marinero!\n").font(.title).bold()
                        
                        Image("naousaCenter")
                            .resizable()
                            .frame(width: 400, height:200)
                            .aspectRatio(contentMode: .fit)
                        Text("\nNestled in the heart of the Aegean Sea, Paros Island is one of the most important tourist destinations. Hotel Marinero is located on the edge of a tranquil and beautiful bay, a haven of warmth, tranquility and rejuvenation. Bathed in brilliant sunshine and clear skies, it offers stunning views of the golden beaches and Naoussa village.")
                    }
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("About")
                    }
                    
                    VStack {
                        Text("Our rooms").font(.title)
                        List(rows) { row in
                            NavigationLink(destination: RoomDetailView(row: row)) {
                                HStack {
                                    Image(row.imageName)
                                        .resizable()                // Make the image resizable
                                        .aspectRatio(contentMode: .fit) // Keep the aspect ratio
                                        .frame(width: 200, height: 200)  // Set the frame size
                                        .padding(.trailing, 0) // Add space between image and text
                                    Text(row.title)  // The text for each row
                                        .font(.headline)
                                }
                                .padding(.vertical, 8) // Padding around the entire row
                            }
                        }
                    }
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Our rooms")
                    }
                    VStack {
                        Text("Connect with us.").font(.title).bold()
                        Image("marinero").frame(width: 200, height: 100).padding(.all)
                        Text("\nContact us").font(.headline)
                        Text("For bookings and enquiries, please call us or write to us.").padding(.all)
                        Text("\nContact Information\n").bold()
                        Text("Hotel Marinero")
                        Text("Naoussa town")
                        Text("Paros island")
                        Text("PC: 844 00")
                        Text("Phone Number: (+30) 2284051536")
                        Text("Email: info@marinero.gr / reservations@marinero.gr")
                    }.tabItem {
                        Image(systemName: "person.fill")
                        Text("Find us")
                    }
                }
                
            }
            .padding()
        }}
}

#Preview {
    ContentView()
}
