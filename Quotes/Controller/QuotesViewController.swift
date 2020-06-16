//
//  ViewController.swift
//  Quotes
//
//  Created by Jyoti Sahoo on 6/15/20.
//  Copyright © 2020 Jyoti Sahoo. All rights reserved.
//

import UIKit

class QuotesViewController: UIViewController {

	@IBOutlet weak var quotesList: UITableView!

	let quoteDataSource = QuoteDataSource(quotes: Quote.quotes)

	override func viewDidLoad() {
		super.viewDidLoad()
		quotesList.dataSource = quoteDataSource
		quotesList.reloadData()
	}

	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		if let indexPath = quotesList.indexPathForSelectedRow {
			quotesList.deselectRow(at: indexPath, animated: true)
		}
	}

	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		guard let detailsVC = segue.destination as? QuoteDetailsViewController,
			let index = quotesList.indexPathForSelectedRow else { return }
		let quote = quoteDataSource.quotes[index.row]
		detailsVC.selectedQuote = quote
	}
}

