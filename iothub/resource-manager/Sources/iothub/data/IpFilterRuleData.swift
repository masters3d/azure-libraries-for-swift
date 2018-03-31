// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct IpFilterRuleData : IpFilterRuleProtocol {
    public var filterName: String
    public var action: IpFilterActionTypeEnum
    public var ipMask: String

        enum CodingKeys: String, CodingKey {case filterName = "filterName"
        case action = "action"
        case ipMask = "ipMask"
        }

  public init(filterName: String, action: IpFilterActionTypeEnum, ipMask: String)  {
    self.filterName = filterName
    self.action = action
    self.ipMask = ipMask
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.filterName = try container.decode(String.self, forKey: .filterName)
    self.action = try container.decode(IpFilterActionTypeEnum.self, forKey: .action)
    self.ipMask = try container.decode(String.self, forKey: .ipMask)
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.filterName, forKey: .filterName)
    try container.encode(self.action, forKey: .action)
    try container.encode(self.ipMask, forKey: .ipMask)
  }
}

extension DataFactory {
  public static func createIpFilterRuleProtocol(filterName: String, action: IpFilterActionTypeEnum, ipMask: String) -> IpFilterRuleProtocol {
    return IpFilterRuleData(filterName: filterName, action: action, ipMask: ipMask)
  }
}
