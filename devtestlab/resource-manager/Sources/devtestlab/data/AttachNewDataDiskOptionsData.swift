// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct AttachNewDataDiskOptionsData : AttachNewDataDiskOptionsProtocol {
    public var diskSizeGiB: Int32?
    public var diskName: String?
    public var diskType: StorageTypeEnum?

        enum CodingKeys: String, CodingKey {case diskSizeGiB = "diskSizeGiB"
        case diskName = "diskName"
        case diskType = "diskType"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.diskSizeGiB) {
        self.diskSizeGiB = try container.decode(Int32?.self, forKey: .diskSizeGiB)
    }
    if container.contains(.diskName) {
        self.diskName = try container.decode(String?.self, forKey: .diskName)
    }
    if container.contains(.diskType) {
        self.diskType = try container.decode(StorageTypeEnum?.self, forKey: .diskType)
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
    if self.diskSizeGiB != nil {try container.encode(self.diskSizeGiB, forKey: .diskSizeGiB)}
    if self.diskName != nil {try container.encode(self.diskName, forKey: .diskName)}
    if self.diskType != nil {try container.encode(self.diskType, forKey: .diskType)}
  }
}

extension DataFactory {
  public static func createAttachNewDataDiskOptionsProtocol() -> AttachNewDataDiskOptionsProtocol {
    return AttachNewDataDiskOptionsData()
  }
}
