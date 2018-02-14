// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct LinuxPropertiesData : LinuxPropertiesProtocol {
    public var includedPackageClassifications: LinuxUpdateClassesEnum?
    public var excludedPackageNameMasks: [String]?

        enum CodingKeys: String, CodingKey {case includedPackageClassifications = "includedPackageClassifications"
        case excludedPackageNameMasks = "excludedPackageNameMasks"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.includedPackageClassifications) {
        self.includedPackageClassifications = try container.decode(LinuxUpdateClassesEnum?.self, forKey: .includedPackageClassifications)
    }
    if container.contains(.excludedPackageNameMasks) {
        self.excludedPackageNameMasks = try container.decode([String]?.self, forKey: .excludedPackageNameMasks)
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
    if self.includedPackageClassifications != nil {try container.encode(self.includedPackageClassifications, forKey: .includedPackageClassifications)}
    if self.excludedPackageNameMasks != nil {try container.encode(self.excludedPackageNameMasks as! [String]?, forKey: .excludedPackageNameMasks)}
  }
}

extension DataFactory {
  public static func createLinuxPropertiesProtocol() -> LinuxPropertiesProtocol {
    return LinuxPropertiesData()
  }
}
