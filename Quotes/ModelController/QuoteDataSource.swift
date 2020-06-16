//
//  QuoteDataSource.swift
//  Quotes
//
//  Created by Jyoti Sahoo on 6/15/20.
//  Copyright © 2020 Jyoti Sahoo. All rights reserved.
//

import UIKit
/*QuotesDataSource class descends from NSObject because UITableViewDataSource, which we will implement, is an Objective-C protocol.
*/
class QuoteDataSource: NSObject {
	let quotes: [Quote]

	init(quotes: [Quote]) {
		self.quotes = quotes.sorted(by: <)
	}
}

extension QuoteDataSource: UITableViewDataSource {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return quotes.count
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		guard let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: QuoteCell.self), for: indexPath) as? QuoteCell else { fatalError("Unable to get Cell Type") }
		let quoteItem = quotes[indexPath.row]
		cell.author = quoteItem.author
		cell.quote = quoteItem.text
		return cell
	}

}
