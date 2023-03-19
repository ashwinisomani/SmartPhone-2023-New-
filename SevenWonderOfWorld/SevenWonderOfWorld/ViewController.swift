//
//  ViewController.swift
//  SevenWonderOfWorld
//
//  Created by Ashwini Somani on 3/18/23.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
    
    
    @IBOutlet weak var tblFirst: UITableView!
    
    //Seven Wonder Name
    let WonderNames = ["The Colosseum","The Great Wall Of China" ,"The Taj Mahal" ,
                       "Christ The Redeemer", "Manchu Picchu" , "chichen itza" , "Petro Jordon"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return WonderNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("TableViewCell", owner: self)?.first as! TableViewCell
        cell.imageContainer.image = UIImage(named: "\(WonderNames[indexPath.row])")
        cell.lblWonder.text = WonderNames[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "DetailSegue", sender: tableView)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "DetailSegue"{
            let secondVC = segue.destination as! SecondViewController
            guard let tableview = sender as? UITableView else {return}
            
            let didSelectedRowAt = tableview.indexPathForSelectedRow!.row
            let description = WonderNames[didSelectedRowAt].description
            secondVC.text = description
        }
        
    }
}

