//
//  DetailView.swift
//  list of users
//
//  Created by kalyan on 3/13/26.
//

import SwiftUI

struct DetailView: View {
    let users: UserData

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {

                // Identity
                Text(users.name)
                    .font(.largeTitle).bold()
                Text("@\(users.username)")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)

                Divider()

                // Contact
                Text("Contact")
                    .font(.headline)
                Group {
                    Text("📞 \(users.phone)")
                    Text("🌐 \(users.website)")
                }
                .foregroundStyle(.primary)

                Divider()

                // Address
                Text("Address")
                    .font(.headline)
                Group {
                    Text(users.address.street)
                    Text(users.address.suite)
                    Text(users.address.city)
                }
                .foregroundStyle(.primary)

                Divider()

                // Company
                Text("Company")
                    .font(.headline)
                
            }
            .padding()
        }
        .navigationTitle(users.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        DetailView(users: UserData(
            id: 1,
            name: "Mikey",
            username: "mikey",
            address: UserData.Address(
                street: "123 Main St",
                suite: "Apt 1",
                city: "Austin"
            ),
            phone: "555-1234",
            website: "mikey.com"
        ))
    }
}
