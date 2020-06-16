//
//  QuoteDetailsViewController.swift
//  Quotes
//
//  Created by Jyoti Sahoo on 6/15/20.
//  Copyright © 2020 Jyoti Sahoo. All rights reserved.
//

import UIKit

class QuoteDetailsViewController: UIViewController {

	@IBOutlet weak var quoteDetailsTextLabel: UILabel!
	@IBOutlet weak var quoteAutorLabel: UILabel!

	var selectedQuote: Quote?

    override func viewDidLoad() {
        super.viewDidLoad()
		navigationItem.largeTitleDisplayMode = .never
		guard let quote = selectedQuote else { return }
		quoteDetailsTextLabel.text = quote.text.quoteFormated
		quoteAutorLabel.text = quote.author.authorFormated
    }

}
