//
//  ContentView.swift
//  maps
//
//  Created by Turma02-2 on 25/09/24.
//

import SwiftUI
import MapKit
import Foundation

struct ContentView: View {
    
    @State private var position = MapCameraPosition.region (
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: -9.4126997, longitude: -40.5914502),
            span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)
        )
    )
    struct Location : Identifiable {
        let id = UUID()
        let name: String
        let coordinate: CLLocationCoordinate2D
        let flag: String
        let description: String
    }
    var positions = [
    Location(
        name : "Brazil",
        coordinate : CLLocationCoordinate2D(latitude: -9.4126997, longitude: -40.5914502),
        flag : "https://s1.static.brasilescola.uol.com.br/be/conteudo/images/2-bandeira-do-brasil.jpg",
        description : "Brazil, officially the Federative Republic of Brazil,[c] is the largest and easternmost country in South America and Latin America. It is the world's fifth-largest country by area and the seventh most populous. Its capital is Brasília, and its most populous city is São Paulo. Brazil is a federation composed of 26 states and a Federal District. It is the only country in the Americas where Portuguese is an official language. Brazil is among the world's most multicultural and ethnically diverse nations, due to over a century of mass immigration from around the world.[13]"
    ),
    Location(
        name : "Germany",
        coordinate : CLLocationCoordinate2D(latitude: 52.5068441, longitude: 13.4247317),
        flag : "https://cdn.britannica.com/97/897-004-232BDF01/Flag-Germany.jpg",
        description : "Germany, officially the Federal Republic of Germany, is a country in Central Europe. It lies between the Baltic and North Sea to the north and the Alps to the south. Its sixteen constituent states have a total population of over 82 million in an area of 357,569 km2 (138,058 sq mi), making it the most populous member state of the European Union. It borders Denmark to the north, Poland and Czechia to the east, Austria and Switzerland to the south, and France, Luxembourg, Belgium, and the Netherlands to the west. The nation's capital and most populous city is Berlin and its main financial centre is Frankfurt; the largest urban area is the Ruhr."
        ),
    Location(
        name : "China",
        coordinate : CLLocationCoordinate2D(latitude: 31.2226668, longitude: 120.8173386),
        flag : "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Flag_of_the_People%27s_Republic_of_China.svg/2560px-Flag_of_the_People%27s_Republic_of_China.svg.png",
        description : "China,[i] officially the People's Republic of China (PRC),[j] is a country in East Asia. With a population exceeding 1.4 billion, it is the world's second-most populous country after India, representing 17.4% of the world population. China spans the equivalent of five time zones and borders fourteen countries by land.[k] With an area of nearly 9.6 million square kilometers (3,700,000 sq mi), it is the third-largest country by total land area.[l] The country is divided into 33 province-level divisions: 22 provinces,[m] five autonomous regions, four municipalities, and two semi-autonomous special administrative regions. Beijing is the country's capital, while Shanghai is its most populous city by urban area and largest financial center."
        )
    ]
    
    
    
    var body: some View {
        ZStack{
            Map (position: $position)
            ForEach(positions){ location in
                Annotation(location.name, coordinate: CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)){
                    Image(systemName: "star.circle")
                        .resizable()
                        .foregroundStyle(.red)
                        .frame(width: 44, height: 44)
                        .background(.white)
                        .clipped()
                }
                
            }
            
                .ignoresSafeArea()
            VStack{
            ZStack{
                
                Rectangle()
                    .frame(width:430, height: 150)
                    .colorInvert()
                    .opacity(0.8)
                Text("World Map")
                    .bold()
                    .font(.title)
                    
            }.ignoresSafeArea()
            
            Spacer()
            
                HStack{
                    
                    ForEach (positions) {place in
                        
                        AsyncImage(url: URL(string: place.flag)) { result in
                            result.image?
                                .resizable()
                                .frame(width: 120, height: 80)
                                .scaledToFit()
                            }
                    }
                    
                }
                
            }
        }
    }
}

#Preview {
    ContentView()
}
