//
//  TicketView.swift
//  DummyTrain
//
//  Created by Igoryok on 13.10.2022.
//

import SwiftUI

struct TicketView: View {
    var body: some View {
        NavigationView {
            VStack {
                Header()
                
                InfoRow(title: "Маршрут", content: "MATBEEBKA - PEЧ BOK3AЛ")
                
                InfoRow(title: "Тариф", content: "Студенческий, 13,50 руб")
                
                InfoRow(title: "ФИО пассажира", content: "Кондратьев Игорь Александрович")
                
                InfoRow(title: "Поезд, время отправления (местн.)", content: "Искитим - Новосибирск-Главный 12.10.2022 11:07")
                
                InfoRow(title: "Дата продажи", content: "12.10.2022 10:50")
                
                Spacer()
                
                ShowQrCodeButton()
            }
            .navigationTitle("Билет")
            .toolbar {
                Button {
                    print("Button presed")
                } label: {
                    Text("Штрих-код")
                        .foregroundColor(.white)
                }
            }
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationBarColor(backgroundColor: .red, titleColor: .white)
    }
    
    private struct Header: View {
        private let columns = [
            GridItem(.flexible()),
            GridItem(.flexible()),
        ]
        
        var body: some View {
            LazyVGrid(columns: columns) {
                VStack(alignment: .leading) {
                    Text("Билет")
                    Text("N° 6834228")
                        .font(.title)
                        .bold()
                }
                
                VStack(alignment: .leading) {
                    Text("Поезд")
                    Text("N° 6610")
                        .font(.title)
                        .bold()
                }
            }
            .background(Color.gray)
        }
    }
    
    private struct InfoRow: View {
        let title: String
        let content: String
        
        var body: some View {
            HStack {
                VStack(alignment: .leading) {
                    Text(title)
                    
                    Text(content)
                        .font(.title2)
                        .foregroundColor(.red)
                    
                    Divider()
                }
                .padding(.horizontal)
                
                Spacer()
            }
        }
    }
    
    private struct ShowQrCodeButton: View {
        var body: some View {
            Button { } label: {
                Label {
                    Text("Показать штрих-код")
                } icon: {
                    Image(systemName: "qrcode")
                }
                .foregroundColor(.white)
                .frame(height: 10)
            }
            .buttonStyle(RoundedRectangleButtonStyle(color: .red))
            .padding(.horizontal, 40)
        }
    }
}

struct TicketView_Previews: PreviewProvider {
    static var previews: some View {
        TicketView()
    }
}
