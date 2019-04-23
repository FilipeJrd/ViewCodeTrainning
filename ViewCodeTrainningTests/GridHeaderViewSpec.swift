//
//  GridHeaderView.swift
//  ViewCodeTrainningTests
//
//  Created by filipe.n.jordao on 23/04/19.
//  Copyright © 2019 thiago.lioy. All rights reserved.
//

import Foundation
import Quick
import Nimble

import Nimble_Snapshots
import UIKit

@testable import ViewCodeTrainning


class GridHeaderViewSpec: QuickSpec {
    override func spec() {
        describe("a 'GridHeaderView'") {
            context("UI") {
                it("should have the expected look and feel") {
                    let frame = CGRect(x: 0, y: 0, width: 300, height: 70)
                    let sut = GridHeaderView(frame: frame)
                    expect(sut) == snapshot("GridHeaderView")
                }
            }
        }
    }
}
