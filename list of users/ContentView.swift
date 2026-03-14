//
//  ContentView.swift
//  list of users
//
//  Created by kalyan on 3/13/26.
//

import SwiftUI

struct ContentView: View {
    
    @State private var viewModel = UserViewModel()
    var body: some View {
        NavigationStack{
            Group{
                if viewModel.isLoading{
                    ProgressView("Loading")
                }else if let error = viewModel.errorMessage{
                    Text(error)
                }else if viewModel.users.isEmpty{
                    VStack(spacing: 12) {
                        ContentUnavailableView("Sorry there are no users", systemImage: "person.slash")
                        
                        Button("Retry"){
                            Task{await viewModel.fetchData()}
                        }
                        Spacer()
                        Spacer()
                    }
                }else{
                    List{
                            ForEach(viewModel.users){user in
                                NavigationLink(value: user){
                                    Text(user.name)
                                }
                            }
                            }.navigationDestination(for: UserData.self){user in
                                DetailView(users: user)
                    }
                }
            }.navigationTitle("List of Users")
                .onAppear{
                    Task{await viewModel.fetchData()
                    }
                }
        }
    }
}
#Preview {
    ContentView()
}
