//
//  GameAITests.swift
//  TicTacToeTests
//
//  Created by Thomas Cacciatore on 6/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import TicTacToe

class GameAITests: XCTestCase {
    
    func testWinCheckingVertical1() {
        var board = GameBoard()
        /*
         x o -
         x o -
         x - -
        */
        
        try! board.place(mark: .x, on: (0, 0))
        try! board.place(mark: .o, on: (1, 0))
        try! board.place(mark: .x, on: (0, 1))
        try! board.place(mark: .o, on: (1, 1))
        try! board.place(mark: .x, on: (0, 2))
        XCTAssertTrue(game(board: board, isWonBy: .x))
        XCTAssertFalse(game(board: board, isWonBy: .o))
    }
    
    func testWinCheckingVertical2() {
        var board = GameBoard()
        /*
         x o -
         x o -
         - o -
        */
        
        try! board.place(mark: .o, on: (1, 0))
        try! board.place(mark: .x, on: (0, 0))
        try! board.place(mark: .o, on: (1, 1))
        try! board.place(mark: .x, on: (0, 1))
        try! board.place(mark: .o, on: (1, 2))
        XCTAssertTrue(game(board: board, isWonBy: .o))
        XCTAssertFalse(game(board: board, isWonBy: .x))
    }
    
    func testWinCheckingHorizontal2() {
        var board = GameBoard()
        /*
         - o -
         x x x
         o - -
         */
        
        try! board.place(mark: .x, on: (0, 1))
        try! board.place(mark: .o, on: (1, 0))
        try! board.place(mark: .x, on: (1, 1))
        try! board.place(mark: .o, on: (0, 2))
        try! board.place(mark: .x, on: (2, 1))
        XCTAssertTrue(game(board: board, isWonBy: .x))
        XCTAssertFalse(game(board: board, isWonBy: .o))
    }
    
    
    
}
