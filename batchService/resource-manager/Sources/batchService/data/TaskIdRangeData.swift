// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct TaskIdRangeData : TaskIdRangeProtocol {
    public var start: Int32
    public var end: Int32

        enum CodingKeys: String, CodingKey {case start = "start"
        case end = "end"
        }

  public init(start: Int32, end: Int32)  {
    self.start = start
    self.end = end
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.start = try container.decode(Int32.self, forKey: .start)
    self.end = try container.decode(Int32.self, forKey: .end)
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.start, forKey: .start)
    try container.encode(self.end, forKey: .end)
  }
}

extension DataFactory {
  public static func createTaskIdRangeProtocol(start: Int32, end: Int32) -> TaskIdRangeProtocol {
    return TaskIdRangeData(start: start, end: end)
  }
}
