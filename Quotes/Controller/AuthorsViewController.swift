//
//  AuthorsViewController.swift
//  Quotes
//
//  Created by Jyoti Sahoo on 6/16/20.
//  Copyright © 2020 Jyoti Sahoo. All rights reserved.
//

import UIKit

class AuthorsViewController: UIViewController {

	@IBOutlet weak var authorsTableView: UITableView!

	let authorsDataSource = AuthorsDataSource(quotes: Quote.quotes)

    override func viewDidLoad() {
        super.viewDidLoad()
		authorsTableView.dataSource = authorsDataSource
		authorsTableView.reloadData()
    }

}

extension AuthorsViewController: UITableViewDelegate {

	func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
		return UITableView.automaticDimension
	}

	func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
		let headerView = UINib(nibName: "SectionHeader", bundle: nil).instantiate(withOwner: nil, options: nil).first as! AuthorHeaderView
		headerView.authorText = authorsDataSource.authors[section]
		return headerView
	}
}
