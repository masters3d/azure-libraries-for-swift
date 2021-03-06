// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct NodeRemoveParameterData : NodeRemoveParameterProtocol {
    public var nodeList: [String]
    public var resizeTimeout: String?
    public var nodeDeallocationOption: ComputeNodeDeallocationOptionEnum?

        enum CodingKeys: String, CodingKey {case nodeList = "nodeList"
        case resizeTimeout = "resizeTimeout"
        case nodeDeallocationOption = "nodeDeallocationOption"
        }

  public init(nodeList: [String])  {
    self.nodeList = nodeList
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.nodeList = try container.decode([String].self, forKey: .nodeList)
    if container.contains(.resizeTimeout) {
        self.resizeTimeout = try container.decode(String?.self, forKey: .resizeTimeout)
    }
    if container.contains(.nodeDeallocationOption) {
        self.nodeDeallocationOption = try container.decode(ComputeNodeDeallocationOptionEnum?.self, forKey: .nodeDeallocationOption)
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
    try container.encode(self.nodeList as! [String], forKey: .nodeList)
    if self.resizeTimeout != nil {try container.encode(self.resizeTimeout, forKey: .resizeTimeout)}
    if self.nodeDeallocationOption != nil {try container.encode(self.nodeDeallocationOption, forKey: .nodeDeallocationOption)}
  }
}

extension DataFactory {
  public static func createNodeRemoveParameterProtocol(nodeList: [String]) -> NodeRemoveParameterProtocol {
    return NodeRemoveParameterData(nodeList: nodeList)
  }
}
