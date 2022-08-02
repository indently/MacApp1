//
//  ContentView.swift
//  MacOne
//
//  Created by Federico on 02/08/2022.
//

import SwiftUI


struct ContentView: View {
    @StateObject private var vm = ViewModel()
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Text("\(vm.number)")
                    .font(.system(size: 40))
                    .frame(width: 70, height: 70, alignment: .center)
                    .padding()
                    .background(.thickMaterial)
                    .cornerRadius(10)
                
                    Spacer()
                Button("Generate") {
                        vm.generateRandomNumber()
                }
                Spacer()
            }
            Divider()
            
            List {
                ForEach(vm.numberList) { number in
                    Text("\(number.number)")
                        .font(.system(size: 20))
                        .onTapGesture {
                            vm.tappedNumber(number: number)
                        }
                        .background(vm.selectedNumber == number.id ? .blue : .clear)
                    
                }
            }
            .cornerRadius(10)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .windowFrame()
            .preferredColorScheme(.light)

    }
}
