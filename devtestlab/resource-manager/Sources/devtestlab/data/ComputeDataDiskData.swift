// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ComputeDataDiskData : ComputeDataDiskProtocol {
    public var name: String?
    public var diskUri: String?
    public var managedDiskId: String?
    public var diskSizeGiB: Int32?

        enum CodingKeys: String, CodingKey {case name = "name"
        case diskUri = "diskUri"
        case managedDiskId = "managedDiskId"
        case diskSizeGiB = "diskSizeGiB"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.name) {
        self.name = try container.decode(String?.self, forKey: .name)
    }
    if container.contains(.diskUri) {
        self.diskUri = try container.decode(String?.self, forKey: .diskUri)
    }
    if container.contains(.managedDiskId) {
        self.managedDiskId = try container.decode(String?.self, forKey: .managedDiskId)
    }
    if container.contains(.diskSizeGiB) {
        self.diskSizeGiB = try container.decode(Int32?.self, forKey: .diskSizeGiB)
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
    if self.name != nil {try container.encode(self.name, forKey: .name)}
    if self.diskUri != nil {try container.encode(self.diskUri, forKey: .diskUri)}
    if self.managedDiskId != nil {try container.encode(self.managedDiskId, forKey: .managedDiskId)}
    if self.diskSizeGiB != nil {try container.encode(self.diskSizeGiB, forKey: .diskSizeGiB)}
  }
}

extension DataFactory {
  public static func createComputeDataDiskProtocol() -> ComputeDataDiskProtocol {
    return ComputeDataDiskData()
  }
}
