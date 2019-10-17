//
//  FontProviding.swift
//  
//
//  Created by Stephen Anthony on 17/10/2019.
//

import UIKit

/// The protocol to conform to when providing fonts.
public protocol FontProviding {
    /// - Parameters:
    ///   - style: The text style that a font should be returned for.
    ///   - traitCollection: The trait collection that the font must be
    /// compatible with. If `nil`, the application's current trait environment
    /// will be used.
    /// - Returns: A font matching the given text style, compatible with the
    /// given trait collection.
    func font(forTextStyle style: UIFont.TextStyle, compatibleWith traitCollection: UITraitCollection?) -> UIFont
    
    /// - Parameter style: The text style that a font should be returned for.
    /// - Returns: A non-scaling font matching the given text style,
    /// compatible with the application's current trait environment.
    ///
    /// Non-scaling fonts ignore the user's Dynamic Type settings and use the
    /// default point size for the given text style.
    func nonScalingFont(forTextStyle style: UIFont.TextStyle) -> UIFont
    
    /// - Parameters:
    ///   - fontSize: The point size of the font to be returned.
    ///   - weight: The weight of the font to be returned, or the closest
    /// available match.
    /// - Returns: A font matching the given parameters.
    func font(ofSize fontSize: CGFloat, weight: UIFont.Weight) -> UIFont
}
