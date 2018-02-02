//
//  TripsController.swift
//  ScreenTest
//
//  Created by Fernando Mota e Silva on 02/02/18.
//  Copyright © 2018 Fernando Mota e Silva. All rights reserved.
//

import UIKit

class TripsController: UIViewController {

    @IBOutlet weak var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }
}

extension TripsController: UITableViewDelegate {
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        
        let controller = storyBoard.instantiateViewController(withIdentifier: "Seats")
        
        navigationController?.pushViewController(controller, animated: true)
    }
    
}

extension TripsController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Celula")!
        
        cell.textLabel?.text = "Ir para seats"
        
        return cell
    }
}
