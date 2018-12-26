//
//  ViewUtils.swift
//  PocketMovies
//
//  Created by Gabriel Rosa on 26/12/18.
//  Copyright © 2018 Gabe. All rights reserved.
//

import UIKit

public class ViewUtils {    
    public static func loadNibNamed<T>(_ nibName: String, owner: Any?) -> T? {
        return Bundle.main.loadNibNamed(nibName, owner: owner, options: nil)?.first as? T
    }
}
