// ErrorMessages
// ErrorMessage.swift
//
// MIT License
//
// Copyright (c) 2025 Varun Santhanam
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the  Software), to deal
//
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED  AS IS, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

@available(macOS 14.0, macCatalyst 17.0, iOS 17.0, watchOS 10.0, tvOS 17.0, visionOS 1.0, *)
public struct ErrorMessage: Error, CustomStringConvertible {

    /// Create an error message
    /// - Parameters:
    ///   - message: A descriptive message explaining the error
    ///   - file: The file where the error occured
    ///   - function: The function where the error occured
    ///   - line: The line number where the error occured
    ///   - column: The column number where the error occured
    public init(
        _ message: String,
        file: StaticString = #fileID,
        function: StaticString = #function,
        line: UInt = #line,
        column: UInt = #column
    ) {
        self.message = message
        self.file = file
        self.function = function
        self.line = line
        self.column = column
    }

    /// A descriptive message explaining the error
    public let message: String

    /// The file where the error occured
    public let file: StaticString

    /// The function where the error occured
    public let function: StaticString

    /// The line number where the error occured
    public let line: UInt

    /// The column number where the error occured
    public let column: UInt

    // MARK: - CustomStringConvertible

    public var description: String {
        "\(file):\(function):\(line):\(column): \(message)"
    }

}
