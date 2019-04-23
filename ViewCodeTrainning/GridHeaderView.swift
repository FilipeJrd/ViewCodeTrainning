//
//  GridHeaderView.swift
//  ViewCodeTrainning
//
//  Created by filipe.n.jordao on 23/04/19.
//  Copyright © 2019 thiago.lioy. All rights reserved.
//

import UIKit
import SnapKit

final class GridHeaderView: UIView {
    lazy var image: UIImageView = {
        let view = UIImageView()
        view.backgroundColor = .yellow
        
        return view
    }()
    
    lazy var title: UILabel = {
        let view = UILabel()
        view.backgroundColor = .orange
        return view
    }()
    
    lazy var subtitle: UILabel = {
        let view = UILabel()
        view.backgroundColor = .green
        return view
    }()
    
    lazy var supportFieldLeft: UITextField = {
        let view = UITextField()
        view.backgroundColor = .magenta
        return view
    }()
    
    lazy var supportFieldRight: UITextField = {
        let view = UITextField()
        view.backgroundColor = .cyan
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension GridHeaderView: CodeView {
    func buildViewHierarchy() {
        [
            image,
            title,
            subtitle,
            supportFieldLeft,
            supportFieldRight
        ].forEach(addSubview)
    }
    
    func setupConstraints() {
        let elementSpacing = 10
        
        image.snp.makeConstraints { make in
            make.top.bottom.left.equalTo(self)
            make.width.equalTo(self.snp.height)
        }
        
        title.snp.makeConstraints { make in
            make.left.equalTo(image.snp.right).offset(elementSpacing)
            make.top.right.equalTo(self)
        }
        
        subtitle.snp.makeConstraints { make in
            make.top.equalTo(title.snp.bottom).offset(elementSpacing)
            make.height.left.right.equalTo(title)
        }
        
        supportFieldLeft.snp.makeConstraints { make in
            make.left.equalTo(subtitle)
            make.top.equalTo(subtitle.snp.bottom).offset(elementSpacing)
            make.bottom.equalTo(self)
            make.height.equalTo(self).multipliedBy(0.4)
        }
        
        supportFieldRight.snp.makeConstraints { make in
            make.top.bottom.equalTo(supportFieldLeft)
            make.right.equalTo(self)
            make.left.equalTo(supportFieldLeft.snp.right).offset(elementSpacing)
            make.size.equalTo(supportFieldLeft)
        }
    }
}
