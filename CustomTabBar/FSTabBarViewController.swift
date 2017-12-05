//
//  FSTabBarViewController.swift
//  CustomTabBar
//
//  Created by Vikas Pandey on 25/10/17.
//  Copyright © 2017 Valtech. All rights reserved.
//

import UIKit

class FSTabBarViewController: UITabBarController,UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    // Tab Bar Specific Code
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.setupMiddleButton()
    }

    // TabBarButton – Setup Middle Button
    var menuButton : UIButton!
    func setupMiddleButton() {
        menuButton = UIButton(frame: CGRect(x: 0, y: -20 , width: 40, height: 40))
        var menuButtonFrame = menuButton.frame
        menuButtonFrame.origin.y = self.view.bounds.height - menuButtonFrame.height - 20
        menuButtonFrame.origin.x = self.view.bounds.width / 2 - menuButtonFrame.size.width / 2
        menuButton.frame = menuButtonFrame

        menuButton.backgroundColor = UIColor.white
        menuButton.tintColor = UIColor.blue
        menuButton.layer.cornerRadius = 5
        menuButton.layer.borderWidth = 1
        menuButton.layer.borderColor = UIColor.lightGray.cgColor

        self.view.addSubview(menuButton)

        menuButton.setImage(#imageLiteral(resourceName: "icon_favorities"), for: UIControlState.normal)
        menuButton.setImage(#imageLiteral(resourceName: "icon_favourite_Selected"), for: UIControlState.selected)
        menuButton.addTarget(self, action: #selector(menuButtonAction), for: UIControlEvents.touchUpInside)

        self.view.layoutIfNeeded()
    }

    // Menu Button Touch Action
    @objc func menuButtonAction(sender: UIButton) {
        self.selectedIndex = 2
        menuButton.isSelected = true
    }


    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {

    }

    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        perform(#selector(updateBarUI), with: nil, afterDelay: 0.03)
    }

    @objc func updateBarUI(){
        menuButton.isSelected = self.selectedIndex == 2 ? true : false
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
