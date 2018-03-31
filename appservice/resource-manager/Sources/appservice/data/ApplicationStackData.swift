// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ApplicationStackData : ApplicationStackProtocol {
    public var name: String?
    public var display: String?
    public var dependency: String?
    public var majorVersions: [StackMajorVersionProtocol?]?
    public var frameworks: [ApplicationStackProtocol?]?

        enum CodingKeys: String, CodingKey {case name = "name"
        case display = "display"
        case dependency = "dependency"
        case majorVersions = "majorVersions"
        case frameworks = "frameworks"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.name) {
        self.name = try container.decode(String?.self, forKey: .name)
    }
    if container.contains(.display) {
        self.display = try container.decode(String?.self, forKey: .display)
    }
    if container.contains(.dependency) {
        self.dependency = try container.decode(String?.self, forKey: .dependency)
    }
    if container.contains(.majorVersions) {
        self.majorVersions = try container.decode([StackMajorVersionData?]?.self, forKey: .majorVersions)
    }
    if container.contains(.frameworks) {
        self.frameworks = try container.decode([ApplicationStackData?]?.self, forKey: .frameworks)
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
    if self.display != nil {try container.encode(self.display, forKey: .display)}
    if self.dependency != nil {try container.encode(self.dependency, forKey: .dependency)}
    if self.majorVersions != nil {try container.encode(self.majorVersions as! [StackMajorVersionData?]?, forKey: .majorVersions)}
    if self.frameworks != nil {try container.encode(self.frameworks as! [ApplicationStackData?]?, forKey: .frameworks)}
  }
}

extension DataFactory {
  public static func createApplicationStackProtocol() -> ApplicationStackProtocol {
    return ApplicationStackData()
  }
}
