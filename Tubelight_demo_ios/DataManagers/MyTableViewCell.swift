//
//  MyTableViewCell.swift
//  Tubelight_demo_ios
//
//  Created by Professor on 29/09/22.
//  Copyright © 2022 Diagnal. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    
    @IBOutlet weak var myCollectionView: UICollectionView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
        myCollectionView.delegate = self
        myCollectionView.dataSource = self
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension MyTableViewCell : UICollectionViewDelegate,UICollectionViewDataSource{
func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return MovieList[myCollectionView.tag].productImage.count
}

func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "collectionviewcell", for: indexPath) as! MyCollectionViewCell
    cell.myImage.image = UIImage(named:MovieList[myCollectionView.tag].productImage[indexPath.row])
    cell.myLabel.text = MovieList[myCollectionView.tag].productName[indexPath.row]
    return cell
}
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("You Selected \(MovieList[myCollectionView.tag].productName[indexPath.row])")
    }

}
    

