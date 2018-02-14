// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ImageStorageProfileData : ImageStorageProfileProtocol {
    public var osDisk: ImageOSDiskProtocol
    public var dataDisks: [ImageDataDiskProtocol?]?

        enum CodingKeys: String, CodingKey {case osDisk = "osDisk"
        case dataDisks = "dataDisks"
        }

  public init(osDisk: ImageOSDiskProtocol)  {
    self.osDisk = osDisk
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.osDisk = try container.decode(ImageOSDiskData.self, forKey: .osDisk)
    if container.contains(.dataDisks) {
        self.dataDisks = try container.decode([ImageDataDiskData?]?.self, forKey: .dataDisks)
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
    try container.encode(self.osDisk as! ImageOSDiskData, forKey: .osDisk)
    if self.dataDisks != nil {try container.encode(self.dataDisks as! [ImageDataDiskData?]?, forKey: .dataDisks)}
  }
}

extension DataFactory {
  public static func createImageStorageProfileProtocol(osDisk: ImageOSDiskProtocol) -> ImageStorageProfileProtocol {
    return ImageStorageProfileData(osDisk: osDisk)
  }
}
