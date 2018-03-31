// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct VirtualApplicationData : VirtualApplicationProtocol {
    public var virtualPath: String?
    public var physicalPath: String?
    public var preloadEnabled: Bool?
    public var virtualDirectories: [VirtualDirectoryProtocol?]?

        enum CodingKeys: String, CodingKey {case virtualPath = "virtualPath"
        case physicalPath = "physicalPath"
        case preloadEnabled = "preloadEnabled"
        case virtualDirectories = "virtualDirectories"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.virtualPath) {
        self.virtualPath = try container.decode(String?.self, forKey: .virtualPath)
    }
    if container.contains(.physicalPath) {
        self.physicalPath = try container.decode(String?.self, forKey: .physicalPath)
    }
    if container.contains(.preloadEnabled) {
        self.preloadEnabled = try container.decode(Bool?.self, forKey: .preloadEnabled)
    }
    if container.contains(.virtualDirectories) {
        self.virtualDirectories = try container.decode([VirtualDirectoryData?]?.self, forKey: .virtualDirectories)
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
    if self.virtualPath != nil {try container.encode(self.virtualPath, forKey: .virtualPath)}
    if self.physicalPath != nil {try container.encode(self.physicalPath, forKey: .physicalPath)}
    if self.preloadEnabled != nil {try container.encode(self.preloadEnabled, forKey: .preloadEnabled)}
    if self.virtualDirectories != nil {try container.encode(self.virtualDirectories as! [VirtualDirectoryData?]?, forKey: .virtualDirectories)}
  }
}

extension DataFactory {
  public static func createVirtualApplicationProtocol() -> VirtualApplicationProtocol {
    return VirtualApplicationData()
  }
}
