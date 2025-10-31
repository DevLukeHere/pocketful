//
//  ContentView.swift
//  Pocketful
//
//  Created by Luke Wong Zhi Kiang on 30/10/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                // Icon using primary brand color
                Image(systemName: "dollarsign.circle.fill")
                    .font(.system(size: 80))
                
                Text("Welcome to Pocketful")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(.primary)
                
                Text("Your personal budget tracker")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                
                // Example: Color-coded data demonstration
                VStack(spacing: 16) {
                    // Income example
                    HStack {
                        Image(systemName: "arrow.down.circle.fill")
                            .foregroundStyle(.incomeGreen)
                        Text("Income")
                            .foregroundStyle(.primary)
                        Spacer()
                        Text("$2,500")
                            .fontWeight(.semibold)
                            .foregroundStyle(.incomeGreen)
                    }
                    .padding()
                    .cornerRadius(12)
                    
                    // Expense example
                    HStack {
                        Image(systemName: "arrow.up.circle.fill")
                            .foregroundStyle(.expenseAmber)
                        Text("Expenses")
                            .foregroundStyle(.primary)
                        Spacer()
                        Text("$1,200")
                            .fontWeight(.semibold)
                            .foregroundStyle(.expenseAmber)
                    }
                    .padding()
                    .cornerRadius(12)
                }
                .padding(.horizontal)
                .padding(.top, 20)
                
                Spacer()
                
                // Example buttons with custom colors
                VStack(spacing: 12) {
                    Button(action: {}) {
                        Label("Add Transaction", systemImage: "plus.circle.fill")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .foregroundStyle(.white)
                            .cornerRadius(12)
                    }
                    
                    Button(action: {}) {
                        Label("View Reports", systemImage: "chart.bar.fill")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .foregroundStyle(.white)
                            .cornerRadius(12)
                    }
                }
                .padding(.horizontal)
                .padding(.bottom, 20)
            }
            .navigationTitle("Home")
        }
    }
}

#Preview {
    ContentView()
}
