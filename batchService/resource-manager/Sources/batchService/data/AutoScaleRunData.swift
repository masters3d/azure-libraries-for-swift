// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct AutoScaleRunData : AutoScaleRunProtocol {
    public var timestamp: Date
    public var results: String?
    public var error: AutoScaleRunErrorProtocol?

        enum CodingKeys: String, CodingKey {case timestamp = "timestamp"
        case results = "results"
        case error = "error"
        }

  public init(timestamp: Date)  {
    self.timestamp = timestamp
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
          self.timestamp = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .timestamp)), format: .dateTime)!
    if container.contains(.results) {
        self.results = try container.decode(String?.self, forKey: .results)
    }
    if container.contains(.error) {
        self.error = try container.decode(AutoScaleRunErrorData?.self, forKey: .error)
    }
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(DateConverter.toString(date: self.timestamp, format: .dateTime), forKey: .timestamp)
    if self.results != nil {try container.encode(self.results, forKey: .results)}
    if self.error != nil {try container.encode(self.error as! AutoScaleRunErrorData?, forKey: .error)}
  }
}

extension DataFactory {
  public static func createAutoScaleRunProtocol(timestamp: Date) -> AutoScaleRunProtocol {
    return AutoScaleRunData(timestamp: timestamp)
  }
}
