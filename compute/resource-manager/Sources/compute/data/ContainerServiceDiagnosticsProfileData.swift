// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ContainerServiceDiagnosticsProfileData : ContainerServiceDiagnosticsProfileProtocol {
    public var vmDiagnostics: ContainerServiceVMDiagnosticsProtocol

        enum CodingKeys: String, CodingKey {case vmDiagnostics = "vmDiagnostics"
        }

  public init(vmDiagnostics: ContainerServiceVMDiagnosticsProtocol) {
    self.vmDiagnostics = vmDiagnostics
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.vmDiagnostics = try container.decode(ContainerServiceVMDiagnosticsData.self, forKey: .vmDiagnostics)
    if var pageDecoder = decoder as? PageDecoder {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.vmDiagnostics as! ContainerServiceVMDiagnosticsData, forKey: .vmDiagnostics)
  }
}

extension DataFactory {
  public static func createContainerServiceDiagnosticsProfileProtocol(vmDiagnostics: ContainerServiceVMDiagnosticsProtocol) -> ContainerServiceDiagnosticsProfileProtocol {
    return ContainerServiceDiagnosticsProfileData(vmDiagnostics: vmDiagnostics)
  }
}
