//
//  ViewController.swift
//  Tubelight_demo_ios
//
//  Created by Professor on 27/09/22.
//  Copyright © 2022 Diagnal. All rights reserved.
//

import UIKit

let MovieList = [
    MovieData(sectionType: "Category 1", productImage:["harryporter","antman","hobbit","avatar","frightnight","Howtotrain"],productName:["Harry Potter","AntMan","Hobbit","Avatar","Fright Night","How To Train"]),
    
    MovieData(sectionType: "Category 2", productImage: ["harryporter","antman","hobbit","avatar","frightnight","Howtotrain"],productName:["Harry Potter","AntMan","Hobbit","Avatar","Fright Night","How To Train"]),
    
    MovieData(sectionType: "Category 3", productImage: ["harryporter","antman","hobbit","avatar","frightnight","Howtotrain"],productName:["Harry Potter","AntMan","Hobbit","Avatar","Fright Night","How To Train"]),
    
    MovieData(sectionType: "Category 4", productImage: ["harryporter","antman","hobbit","avatar","frightnight","Howtotrain"],productName:["Harry Potter","AntMan","Hobbit","Avatar","Fright Night","How To Train"]),
    
    MovieData(sectionType: "Category 5", productImage: ["harryporter","antman","hobbit","avatar","frightnight","Howtotrain"],productName:["Harry Potter","AntMan","Hobbit","Avatar","Fright Night","How To Train"])
]

class ViewController: UIViewController {
    
    
    @IBOutlet weak var myTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        SetupView()
    }
    
    private func SetupView() {
        SetNavigationBarImage()
    }
    
    
    private func SetNavigationBarImage() {
        let logo = UIImage(named: "tubelight_transparent")
        let imageView = UIImageView(image: logo)
        imageView.contentMode = .scaleAspectFit
        self.navigationItem.titleView = imageView
        
    }

}

extension ViewController : UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyTableViewCell
        cell.myCollectionView.tag = indexPath.section
        cell.myCollectionView.reloadData()
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return MovieList.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return MovieList[section].sectionType
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.tintColor = .yellow
        
    }
}
    
    
    



