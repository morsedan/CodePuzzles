//
//  CountTapsTableViewController.swift
//  CountTaps
//
//  Created by Dan Morse on 10/4/23.
//

import UIKit

class CountTapsTableViewController: UITableViewController {
    let tapController = TapController()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addBarButtonItem()
    }

    // MARK: Private
    private func addBarButtonItem() {
        let add = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(countTapped))
        
        navigationItem.rightBarButtonItems = [add]
    }
    
    @objc private func countTapped() {
        if let indices = tableView.indexPathsForVisibleRows?.compactMap({ $0.row }) {
            tapController.step(indices)
            tableView.reloadData()
        }
    }
}

extension CountTapsTableViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tapController.taps.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        cell.textLabel?.text = "\(tapController.taps[indexPath.row].quantity) Taps"

        return cell
    }
}
