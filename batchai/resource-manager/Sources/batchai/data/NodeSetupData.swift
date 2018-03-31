// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct NodeSetupData : NodeSetupProtocol {
    public var setupTask: SetupTaskProtocol?
    public var mountVolumes: MountVolumesProtocol?

        enum CodingKeys: String, CodingKey {case setupTask = "setupTask"
        case mountVolumes = "mountVolumes"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.setupTask) {
        self.setupTask = try container.decode(SetupTaskData?.self, forKey: .setupTask)
    }
    if container.contains(.mountVolumes) {
        self.mountVolumes = try container.decode(MountVolumesData?.self, forKey: .mountVolumes)
    }
    if var pageDecoder = decoder as? PageDecoder {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    if self.setupTask != nil { try container.encode(self.setupTask as! SetupTaskData?, forKey: .setupTask) }
    if self.mountVolumes != nil { try container.encode(self.mountVolumes as! MountVolumesData?, forKey: .mountVolumes) }
  }
}

extension DataFactory {
  public static func createNodeSetupProtocol() -> NodeSetupProtocol {
    return NodeSetupData()
  }
}
