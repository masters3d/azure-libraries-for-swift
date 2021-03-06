// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct InconsistentVmDetailsData : InconsistentVmDetailsProtocol {
    public var vmName: String?
    public var cloudName: String?
    public var details: [String]?
    public var errorIds: [String]?

        enum CodingKeys: String, CodingKey {case vmName = "vmName"
        case cloudName = "cloudName"
        case details = "details"
        case errorIds = "errorIds"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.vmName) {
        self.vmName = try container.decode(String?.self, forKey: .vmName)
    }
    if container.contains(.cloudName) {
        self.cloudName = try container.decode(String?.self, forKey: .cloudName)
    }
    if container.contains(.details) {
        self.details = try container.decode([String]?.self, forKey: .details)
    }
    if container.contains(.errorIds) {
        self.errorIds = try container.decode([String]?.self, forKey: .errorIds)
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
    if self.vmName != nil {try container.encode(self.vmName, forKey: .vmName)}
    if self.cloudName != nil {try container.encode(self.cloudName, forKey: .cloudName)}
    if self.details != nil {try container.encode(self.details as! [String]?, forKey: .details)}
    if self.errorIds != nil {try container.encode(self.errorIds as! [String]?, forKey: .errorIds)}
  }
}

extension DataFactory {
  public static func createInconsistentVmDetailsProtocol() -> InconsistentVmDetailsProtocol {
    return InconsistentVmDetailsData()
  }
}
