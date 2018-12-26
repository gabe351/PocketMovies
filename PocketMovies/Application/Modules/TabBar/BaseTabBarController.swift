//
//  TabBarController.swift
//  PocketMovies
//
//  Created by Gabriel Rosa on 26/12/18.
//  Copyright © 2018 Gabe. All rights reserved.
//

import UIKit

class BaseTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        tabBar.unselectedItemTintColor = Theme.TabBarUnselectedItemColor
        //        tabBar.tintColor               = Theme.TabBarSelectedItemColor
        //        tabBar.barTintColor            = Theme.TabBarColor
        
        let releasesViewController: ReleasesViewController? =
            ViewUtils.loadNibNamed(ReleasesViewController.nibName, owner: nil)
        let searchViewController: SearchViewController? =
            ViewUtils.loadNibNamed(SearchViewController.nibName, owner: nil)
        let favoriteViewController: FavoriteViewController? =
            ViewUtils.loadNibNamed(FavoriteViewController.nibName, owner: nil)
        
        if let releases = releasesViewController, let search = searchViewController, let favorite = favoriteViewController {
            releases.tabBarItem.image = UIImage()
            releases.title            = "New Releases"
            let imageView = UIImageView(image: UIImage(named: "icon-search"))            
            imageView.adjustsImageSizeForAccessibilityContentSizeCategory = true
            search.tabBarItem.image   = imageView.image
            search.title              = "Search Movie"
            favorite.tabBarItem.image = UIImage()
            favorite.title            = "Favorite Movies"
            viewControllers = [releases, search, favorite]
        }
        
//        if let dashboardViewController = storyboard.instantiateViewController(withIdentifier: "ConstructionSiteDashboardViewIdentifier") as? DashboardViewController {
//            let stepManagerViewController              = StepManagerViewController()
//            dashboardViewController.title              = AppStrings.dashboard_title
//            dashboardViewController.tabBarItem.image   = UIImage(named: "dashboard-filled")
//            stepManagerViewController.title            = AppStrings.tracking_title
//            stepManagerViewController.tabBarItem.image = UIImage(named: "accomp-filled")
        
//        }
    }
}
