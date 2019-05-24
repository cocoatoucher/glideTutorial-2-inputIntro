//
//  Slope_8_11.swift
//  glide
//
//  Copyright (c) 2019 cocoatoucher user on github.com (https://github.com/cocoatoucher/)
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:

//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.

//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//

import Foundation

/// Bitmap data for slope.
let slope8And11Bitmap: [TiledPoint] = [TiledPoint(x: 0, y: 0),
                                       TiledPoint(x: 1, y: 0),
                                       TiledPoint(x: 2, y: 0),
                                       TiledPoint(x: 3, y: 0),
                                       TiledPoint(x: 4, y: 0),
                                       TiledPoint(x: 5, y: 0),
                                       TiledPoint(x: 6, y: 0),
                                       TiledPoint(x: 7, y: 0),
                                       TiledPoint(x: 8, y: 0),
                                       TiledPoint(x: 9, y: 0),
                                       TiledPoint(x: 10, y: 0),
                                       TiledPoint(x: 11, y: 0),
                                       TiledPoint(x: 12, y: 0),
                                       TiledPoint(x: 13, y: 0),
                                       TiledPoint(x: 14, y: 0),
                                       TiledPoint(x: 15, y: 0),
                                       TiledPoint(x: 0, y: 1),
                                       TiledPoint(x: 1, y: 1),
                                       TiledPoint(x: 2, y: 1),
                                       TiledPoint(x: 3, y: 1),
                                       TiledPoint(x: 4, y: 1),
                                       TiledPoint(x: 5, y: 1),
                                       TiledPoint(x: 6, y: 1),
                                       TiledPoint(x: 7, y: 1),
                                       TiledPoint(x: 8, y: 1),
                                       TiledPoint(x: 9, y: 1),
                                       TiledPoint(x: 10, y: 1),
                                       TiledPoint(x: 11, y: 1),
                                       TiledPoint(x: 12, y: 1),
                                       TiledPoint(x: 13, y: 1),
                                       TiledPoint(x: 14, y: 1),
                                       TiledPoint(x: 15, y: 1),
                                       TiledPoint(x: 0, y: 2),
                                       TiledPoint(x: 1, y: 2),
                                       TiledPoint(x: 2, y: 2),
                                       TiledPoint(x: 3, y: 2),
                                       TiledPoint(x: 4, y: 2),
                                       TiledPoint(x: 5, y: 2),
                                       TiledPoint(x: 6, y: 2),
                                       TiledPoint(x: 7, y: 2),
                                       TiledPoint(x: 8, y: 2),
                                       TiledPoint(x: 9, y: 2),
                                       TiledPoint(x: 10, y: 2),
                                       TiledPoint(x: 11, y: 2),
                                       TiledPoint(x: 12, y: 2),
                                       TiledPoint(x: 13, y: 2),
                                       TiledPoint(x: 14, y: 2),
                                       TiledPoint(x: 15, y: 2),
                                       TiledPoint(x: 0, y: 3),
                                       TiledPoint(x: 1, y: 3),
                                       TiledPoint(x: 2, y: 3),
                                       TiledPoint(x: 3, y: 3),
                                       TiledPoint(x: 4, y: 3),
                                       TiledPoint(x: 5, y: 3),
                                       TiledPoint(x: 6, y: 3),
                                       TiledPoint(x: 7, y: 3),
                                       TiledPoint(x: 8, y: 3),
                                       TiledPoint(x: 9, y: 3),
                                       TiledPoint(x: 10, y: 3),
                                       TiledPoint(x: 11, y: 3),
                                       TiledPoint(x: 12, y: 3),
                                       TiledPoint(x: 13, y: 3),
                                       TiledPoint(x: 14, y: 3),
                                       TiledPoint(x: 15, y: 3),
                                       TiledPoint(x: 0, y: 4),
                                       TiledPoint(x: 1, y: 4),
                                       TiledPoint(x: 2, y: 4),
                                       TiledPoint(x: 3, y: 4),
                                       TiledPoint(x: 4, y: 4),
                                       TiledPoint(x: 5, y: 4),
                                       TiledPoint(x: 6, y: 4),
                                       TiledPoint(x: 7, y: 4),
                                       TiledPoint(x: 8, y: 4),
                                       TiledPoint(x: 9, y: 4),
                                       TiledPoint(x: 10, y: 4),
                                       TiledPoint(x: 11, y: 4),
                                       TiledPoint(x: 12, y: 4),
                                       TiledPoint(x: 13, y: 4),
                                       TiledPoint(x: 14, y: 4),
                                       TiledPoint(x: 15, y: 4),
                                       TiledPoint(x: 0, y: 5),
                                       TiledPoint(x: 1, y: 5),
                                       TiledPoint(x: 2, y: 5),
                                       TiledPoint(x: 3, y: 5),
                                       TiledPoint(x: 4, y: 5),
                                       TiledPoint(x: 5, y: 5),
                                       TiledPoint(x: 6, y: 5),
                                       TiledPoint(x: 7, y: 5),
                                       TiledPoint(x: 8, y: 5),
                                       TiledPoint(x: 9, y: 5),
                                       TiledPoint(x: 10, y: 5),
                                       TiledPoint(x: 11, y: 5),
                                       TiledPoint(x: 0, y: 6),
                                       TiledPoint(x: 1, y: 6),
                                       TiledPoint(x: 2, y: 6),
                                       TiledPoint(x: 3, y: 6),
                                       TiledPoint(x: 4, y: 6),
                                       TiledPoint(x: 5, y: 6),
                                       TiledPoint(x: 6, y: 6),
                                       TiledPoint(x: 7, y: 6),
                                       TiledPoint(x: 0, y: 7),
                                       TiledPoint(x: 1, y: 7),
                                       TiledPoint(x: 2, y: 7),
                                       TiledPoint(x: 3, y: 7)]
