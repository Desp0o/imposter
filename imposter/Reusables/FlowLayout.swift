//
//  FlowLayout.swift
//  imposter
//
//  Created by Tornike Despotashvili on 8/23/25.
//


import SwiftUI

struct FlowLayout: Layout {
  var spacing: CGFloat = 10
  var vSpacing: CGFloat = 10
  var alignment: HorizontalAlignment = .leading
  
  func sizeThatFits(
    proposal: ProposedViewSize,
    subviews: Subviews,
    cache: inout ()
  ) -> CGSize {
    let width = proposal.width ?? .infinity
    var x: CGFloat = 0
    var y: CGFloat = 0
    var rowHeight: CGFloat = 0
    
    for subview in subviews {
      let size = subview.sizeThatFits(.unspecified)
      if x + size.width > width {
        x = 0
        y += rowHeight + vSpacing
        rowHeight = 0
      }
      rowHeight = max(rowHeight, size.height)
      x += size.width + spacing
    }
    return CGSize(width: width, height: y + rowHeight)
  }
  
  func placeSubviews(
    in bounds: CGRect,
    proposal: ProposedViewSize,
    subviews: Subviews,
    cache: inout ()
  ) {
    var x: CGFloat = 0
    var y: CGFloat = 0
    var rowHeight: CGFloat = 0
    
    for subview in subviews {
      let size = subview.sizeThatFits(.unspecified)
      
      if x + size.width > bounds.width {
        x = 0
        y += rowHeight + vSpacing
        rowHeight = 0
      }
      
      subview.place(
        at: CGPoint(x: bounds.minX + x, y: bounds.minY + y),
        proposal: ProposedViewSize(size)
      )
      
      rowHeight = max(rowHeight, size.height)
      x += size.width + spacing
    }
  }
}