// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ArtifactDeploymentStatusPropertiesFragmentData : ArtifactDeploymentStatusPropertiesFragmentProtocol {
    public var deploymentStatus: String?
    public var artifactsApplied: Int32?
    public var totalArtifacts: Int32?

        enum CodingKeys: String, CodingKey {case deploymentStatus = "deploymentStatus"
        case artifactsApplied = "artifactsApplied"
        case totalArtifacts = "totalArtifacts"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.deploymentStatus) {
        self.deploymentStatus = try container.decode(String?.self, forKey: .deploymentStatus)
    }
    if container.contains(.artifactsApplied) {
        self.artifactsApplied = try container.decode(Int32?.self, forKey: .artifactsApplied)
    }
    if container.contains(.totalArtifacts) {
        self.totalArtifacts = try container.decode(Int32?.self, forKey: .totalArtifacts)
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
    if self.deploymentStatus != nil { try container.encode(self.deploymentStatus, forKey: .deploymentStatus) }
    if self.artifactsApplied != nil { try container.encode(self.artifactsApplied, forKey: .artifactsApplied) }
    if self.totalArtifacts != nil { try container.encode(self.totalArtifacts, forKey: .totalArtifacts) }
  }
}

extension DataFactory {
  public static func createArtifactDeploymentStatusPropertiesFragmentProtocol() -> ArtifactDeploymentStatusPropertiesFragmentProtocol {
    return ArtifactDeploymentStatusPropertiesFragmentData()
  }
}
