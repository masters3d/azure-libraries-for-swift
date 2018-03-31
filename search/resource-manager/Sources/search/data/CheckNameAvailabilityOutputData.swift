// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct CheckNameAvailabilityOutputData : CheckNameAvailabilityOutputProtocol {
    public var isNameAvailable: Bool?
    public var reason: UnavailableNameReasonEnum?
    public var message: String?

        enum CodingKeys: String, CodingKey {case isNameAvailable = "nameAvailable"
        case reason = "reason"
        case message = "message"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.isNameAvailable) {
        self.isNameAvailable = try container.decode(Bool?.self, forKey: .isNameAvailable)
    }
    if container.contains(.reason) {
        self.reason = try container.decode(UnavailableNameReasonEnum?.self, forKey: .reason)
    }
    if container.contains(.message) {
        self.message = try container.decode(String?.self, forKey: .message)
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
    if self.isNameAvailable != nil { try container.encode(self.isNameAvailable, forKey: .isNameAvailable) }
    if self.reason != nil { try container.encode(self.reason, forKey: .reason) }
    if self.message != nil { try container.encode(self.message, forKey: .message) }
  }
}

extension DataFactory {
  public static func createCheckNameAvailabilityOutputProtocol() -> CheckNameAvailabilityOutputProtocol {
    return CheckNameAvailabilityOutputData()
  }
}
