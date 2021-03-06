// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct StackMajorVersionData : StackMajorVersionProtocol {
    public var displayVersion: String?
    public var runtimeVersion: String?
    public var isDefault: Bool?
    public var minorVersions: [StackMinorVersionProtocol?]?

        enum CodingKeys: String, CodingKey {case displayVersion = "displayVersion"
        case runtimeVersion = "runtimeVersion"
        case isDefault = "isDefault"
        case minorVersions = "minorVersions"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.displayVersion) {
        self.displayVersion = try container.decode(String?.self, forKey: .displayVersion)
    }
    if container.contains(.runtimeVersion) {
        self.runtimeVersion = try container.decode(String?.self, forKey: .runtimeVersion)
    }
    if container.contains(.isDefault) {
        self.isDefault = try container.decode(Bool?.self, forKey: .isDefault)
    }
    if container.contains(.minorVersions) {
        self.minorVersions = try container.decode([StackMinorVersionData?]?.self, forKey: .minorVersions)
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
    if self.displayVersion != nil {try container.encode(self.displayVersion, forKey: .displayVersion)}
    if self.runtimeVersion != nil {try container.encode(self.runtimeVersion, forKey: .runtimeVersion)}
    if self.isDefault != nil {try container.encode(self.isDefault, forKey: .isDefault)}
    if self.minorVersions != nil {try container.encode(self.minorVersions as! [StackMinorVersionData?]?, forKey: .minorVersions)}
  }
}

extension DataFactory {
  public static func createStackMajorVersionProtocol() -> StackMajorVersionProtocol {
    return StackMajorVersionData()
  }
}
