// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct NodeStateCountsData : NodeStateCountsProtocol {
    public var idleNodeCount: Int32
    public var runningNodeCount: Int32
    public var preparingNodeCount: Int32
    public var unusableNodeCount: Int32
    public var leavingNodeCount: Int32

        enum CodingKeys: String, CodingKey {case idleNodeCount = "idleNodeCount"
        case runningNodeCount = "runningNodeCount"
        case preparingNodeCount = "preparingNodeCount"
        case unusableNodeCount = "unusableNodeCount"
        case leavingNodeCount = "leavingNodeCount"
        }

  public init(idleNodeCount: Int32, runningNodeCount: Int32, preparingNodeCount: Int32, unusableNodeCount: Int32, leavingNodeCount: Int32)  {
    self.idleNodeCount = idleNodeCount
    self.runningNodeCount = runningNodeCount
    self.preparingNodeCount = preparingNodeCount
    self.unusableNodeCount = unusableNodeCount
    self.leavingNodeCount = leavingNodeCount
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.idleNodeCount = try container.decode(Int32.self, forKey: .idleNodeCount)
    self.runningNodeCount = try container.decode(Int32.self, forKey: .runningNodeCount)
    self.preparingNodeCount = try container.decode(Int32.self, forKey: .preparingNodeCount)
    self.unusableNodeCount = try container.decode(Int32.self, forKey: .unusableNodeCount)
    self.leavingNodeCount = try container.decode(Int32.self, forKey: .leavingNodeCount)
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.idleNodeCount, forKey: .idleNodeCount)
    try container.encode(self.runningNodeCount, forKey: .runningNodeCount)
    try container.encode(self.preparingNodeCount, forKey: .preparingNodeCount)
    try container.encode(self.unusableNodeCount, forKey: .unusableNodeCount)
    try container.encode(self.leavingNodeCount, forKey: .leavingNodeCount)
  }
}

extension DataFactory {
  public static func createNodeStateCountsProtocol(idleNodeCount: Int32, runningNodeCount: Int32, preparingNodeCount: Int32, unusableNodeCount: Int32, leavingNodeCount: Int32) -> NodeStateCountsProtocol {
    return NodeStateCountsData(idleNodeCount: idleNodeCount, runningNodeCount: runningNodeCount, preparingNodeCount: preparingNodeCount, unusableNodeCount: unusableNodeCount, leavingNodeCount: leavingNodeCount)
  }
}
