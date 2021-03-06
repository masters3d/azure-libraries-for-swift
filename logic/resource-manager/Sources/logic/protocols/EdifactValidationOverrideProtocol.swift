// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// EdifactValidationOverrideProtocol is the Edifact validation override settings.
public protocol EdifactValidationOverrideProtocol : Codable {
     var messageId: String { get set }
     var enforceCharacterSet: Bool { get set }
     var validateEdiTypes: Bool { get set }
     var validateXsdTypes: Bool { get set }
     var allowLeadingAndTrailingSpacesAndZeroes: Bool { get set }
     var trailingSeparatorPolicy: TrailingSeparatorPolicyEnum { get set }
     var trimLeadingAndTrailingSpacesAndZeroes: Bool { get set }
}
