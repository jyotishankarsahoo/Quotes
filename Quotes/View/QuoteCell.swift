//
//  QuoteCell.swift
//  Quotes
//
//  Created by Jyoti Sahoo on 6/15/20.
//  Copyright © 2020 Jyoti Sahoo. All rights reserved.
//

import UIKit

class QuoteCell: UITableViewCell {

	@IBOutlet private weak var quoteTextLabel: UILabel!
	@IBOutlet private weak var authorTextLabel: UILabel!

	var quote: String? {
		didSet { quoteTextLabel.text = quote?.quoteFormated  }
	}
	var author: String? {
		didSet{ authorTextLabel.text = author?.authorFormated  }
	}
}

extension String {
	var authorFormated: String { return "-" + self }
	var quoteFormated: String { "“" + self + "”" }
}
