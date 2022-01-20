//
//  ViewController.swift
//  Aziz.Amazon
//
//  Created by Abdulaziz on 14/03/1443 AH.
//

import UIKit

class FoodInterFace: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource, UICollectionViewDelegateFlowLayout,UISearchBarDelegate {
    
    @IBOutlet weak var SearchBar: UISearchBar!
    @IBOutlet weak var ProductsVC: UICollectionView!
    
    var searchedProducts: Array<Food> = allFood
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
            backgroundImage.image = UIImage(named: "Image-24")
            backgroundImage.contentMode = UIView.ContentMode.scaleAspectFill
            self.view.insertSubview(backgroundImage, at: 0)
        ProductsVC.dataSource = self
        ProductsVC.delegate = self
        SearchBar.delegate = self
    }
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText.isEmpty {
            searchedProducts = allFood
        } else{
            searchedProducts = allFood.filter({oneProduct in
                return oneProduct.name.starts(with: searchText)
                
            })
        }
        ProductsVC.reloadData()
        
    }
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return searchedProducts.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let productCell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as! FoodCell
        let product = searchedProducts[indexPath.row]
        productCell.setup(product: product)
        return productCell
        
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let product = searchedProducts[indexPath.row]
        performSegue(withIdentifier: "show_product", sender: product)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier != "show_product" {
              return
            }
        let productVC  = segue.destination as! FoodVC
        productVC.selectedFood = sender as? Food
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
        searchedProducts = allFood
        ProductsVC.reloadData()
    }
    
}
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    


