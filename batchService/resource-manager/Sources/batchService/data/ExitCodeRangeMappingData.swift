// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ExitCodeRangeMappingData : ExitCodeRangeMappingProtocol {
    public var start: Int32
    public var end: Int32
    public var exitOptions: ExitOptionsProtocol

        enum CodingKeys: String, CodingKey {case start = "start"
        case end = "end"
        case exitOptions = "exitOptions"
        }

  public init(start: Int32, end: Int32, exitOptions: ExitOptionsProtocol)  {
    self.start = start
    self.end = end
    self.exitOptions = exitOptions
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.start = try container.decode(Int32.self, forKey: .start)
    self.end = try container.decode(Int32.self, forKey: .end)
    self.exitOptions = try container.decode(ExitOptionsData.self, forKey: .exitOptions)
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
    try container.encode(self.exitOptions as! ExitOptionsData, forKey: .exitOptions)
  }
}

extension DataFactory {
  public static func createExitCodeRangeMappingProtocol(start: Int32, end: Int32, exitOptions: ExitOptionsProtocol) -> ExitCodeRangeMappingProtocol {
    return ExitCodeRangeMappingData(start: start, end: end, exitOptions: exitOptions)
  }
}
