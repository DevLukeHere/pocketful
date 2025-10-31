//
//  Colors.swift
//  Pocketful
//
//  Created by Luke Wong Zhi Kiang on 30/10/2025.
//

import SwiftUI

extension Color {
    // MARK: - Brand Colors (Namespaced to avoid clashes)
    struct Brand {
        /// Primary brand color - Use for main buttons, primary icons, and key UI elements
        static let primaryTeal = Color("PrimaryTeal")
        
        /// Accent color - Use for highlights, selected states, and secondary actions
        static let accentGreen = Color("AccentGreen")
        
        // MARK: - Transaction Colors
        /// Expense color - Use for expense amounts, expense icons, and expense-related UI
        static let expenseAmber = Color("ExpenseAmber")
        
        /// Income color - Use for income amounts, income icons, and income-related UI
        static let incomeGreen = Color("IncomeGreen")
    }
    
    // MARK: - UI Semantic Colors (Derived from Brand)
    struct UI {
        /// Primary button color - Main call-to-action buttons
        static let buttonPrimary: Color = Brand.primaryTeal
        
        /// Secondary button color - Less prominent actions
        static let buttonSecondary: Color = Brand.accentGreen
        
        /// Primary icon tint color
        static let iconPrimary: Color = Brand.primaryTeal
        
        /// Accent for highlights and selections
        static let highlight: Color = Brand.accentGreen
        
        /// Background tint for cards and containers
        static let cardBackground: Color = Brand.primaryTeal.opacity(0.1)
        
        /// Light background accent
        static let backgroundAccent: Color = Brand.accentGreen.opacity(0.05)
    }
}
