// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ComputeNodeListResultData : ComputeNodeListResultProtocol {
    public var value: [ComputeNodeProtocol?]?
    public var odatanextLink: String?

        enum CodingKeys: String, CodingKey {case value = "value"
        case odatanextLink = "odata.nextLink"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.value) {
        self.value = try container.decode([ComputeNodeData?]?.self, forKey: .value)
    }
    if container.contains(.odatanextLink) {
        self.odatanextLink = try container.decode(String?.self, forKey: .odatanextLink)
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
    if self.value != nil {try container.encode(self.value as! [ComputeNodeData?]?, forKey: .value)}
    if self.odatanextLink != nil {try container.encode(self.odatanextLink, forKey: .odatanextLink)}
  }
}

extension DataFactory {
  public static func createComputeNodeListResultProtocol() -> ComputeNodeListResultProtocol {
    return ComputeNodeListResultData()
  }
}
