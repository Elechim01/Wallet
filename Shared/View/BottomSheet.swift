//
//  BottomSheet.swift
//  Wallet (iOS)
//
//  Created by Michele Manniello on 03/05/21.
//

import SwiftUI

struct BottomSheet: View {
    @Binding var weeks : [Week]
    @Binding var currentDay : Week
    
    var body: some View{
        VStack{
            Capsule()
                .fill(Color.gray)
                .frame(width: 100, height: 2)
            HStack(spacing:15){
                VStack(alignment: .leading,spacing: 10, content:{
                    Text("Your Balance")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(.black)
                    Text("May 1 2021")
                        .font(.caption)
                        .fontWeight(.heavy)
                        .foregroundColor(.gray)
                })
                Spacer(minLength: 0)
                Button(action: {

                }, label: {
                    Image(systemName: "square.and.arrow.up.fill")
                        .font(.title2)
                        .foregroundColor(.black)

                })
                .offset(x: -10)
            }
            .padding(.top)
            HStack{
                Text("$22,306.07")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.black)

                Spacer(minLength: 0)
                Image(systemName: "arrow.up")
                    .foregroundColor(.gray)
                Text("14%")
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)

            }
            .padding(.top,8)
            HStack(spacing: 0){
                ForEach(weeks){ week in
                    VStack(spacing: 10){
                        Text(week.day)
                            .fontWeight(.bold)
                            .foregroundColor(currentDay.id == week.id ? Color.white.opacity(0.8): .black)
                        Text(week.date)
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(currentDay.id == week.id ? .white: .black)
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.vertical)
                    .background(Color.yellow.opacity(currentDay.id == week.id ? 1 : 0))
                    .clipShape(Capsule())
                    .onTapGesture {
                        withAnimation {
                            currentDay = week
                        }
                    }
                }
            }
            Button(action: {}, label: {
                Image(systemName: "arrow.right")
                    .resizable()
                    .renderingMode(.template)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 35, height: 35)
                    .padding(.vertical,12)
                    .padding(.horizontal,50)
                    .background(Color.blue)
                    .clipShape(Capsule())
                    .foregroundColor(.white)
            })
            .padding(.top)
        }
//        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
//        .padding([.horizontal,.top])
//        .background(Color.white
//                        .clipShape(CustomShape(corners: [.topLeft,.topRight], radius: 35))
//                        .ignoresSafeArea(.all,edges: .bottom))
    }
}

//struct BottomSheet_Previews: PreviewProvider {
//    static var previews: some View {
//        BottomSheet(weeks: <#Binding<[Week]>#>, currentDay: <#Binding<Week>#>)
//    }
//}
