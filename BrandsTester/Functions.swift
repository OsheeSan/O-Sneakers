//
//  Functions.swift
//  BrandsTester
//
//  Created by admin on 12.02.2023.
//

import Foundation

func nameToImage(brand: String, model: String) -> String{
    var result = brand.lowercased() + "-" + model.lowercased()
    result = result.replace(target: " ", withString: "-")
    return result
}

extension String
{
    func replace(target: String, withString: String) -> String
    {
        return self.replacingOccurrences(of: target, with: withString, options: NSString.CompareOptions.literal, range: nil)
    }
}
