//
//  ContentView.swift
//  LottieWeatherApp
//
//  Created by ramil on 07.05.2021.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var cityVM = CityViewViewModel()
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack(spacing: 0) {
                MenuHeaderView(cityVM: cityVM)
                    .padding()
                ScrollView(showsIndicators: false) {
                    CityView(cityVM: cityVM)
                }
            }
            .padding(.top, 40)
        }
        .background(RoundedRectangle(cornerRadius: 5).fill(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.6225789785, green: 0.7866007686, blue: 0.9566056132, alpha: 1)), Color(#colorLiteral(red: 0.4842164516, green: 0.5814146399, blue: 0.9185144305, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)))
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
