//
//  AuthorHeaderView.swift
//  Quotes
//
//  Created by Jyoti Sahoo on 6/16/20.
//  Copyright © 2020 Jyoti Sahoo. All rights reserved.
//

import UIKit

class AuthorHeaderView: UIView {

	@IBOutlet private weak var  titleLabel: UILabel!

	var authorText: String? {
		didSet { titleLabel.text = authorText}
	}

}
