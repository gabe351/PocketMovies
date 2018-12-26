//
//  ReleasesContract.swift
//  PocketMovies
//
//  Created by Gabriel Rosa on 26/12/18.
//  Copyright © 2018 Gabe. All rights reserved.
//

import Foundation

protocol ReleasesViewContract: class {
    func showLoader()
    func hideLoader()
    func showReleases()
    func ShowError()
    func showEmptyList()
}

protocol ReleasesPresenterContract: class {
    func loadReleases()
}
