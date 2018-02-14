// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// EdifactProtocolSettingsProtocol is the Edifact agreement protocol settings.
public protocol EdifactProtocolSettingsProtocol : Codable {
     var validationSettings: EdifactValidationSettingsProtocol { get set }
     var framingSettings: EdifactFramingSettingsProtocol { get set }
     var envelopeSettings: EdifactEnvelopeSettingsProtocol { get set }
     var acknowledgementSettings: EdifactAcknowledgementSettingsProtocol { get set }
     var messageFilter: EdifactMessageFilterProtocol { get set }
     var processingSettings: EdifactProcessingSettingsProtocol { get set }
     var envelopeOverrides: [EdifactEnvelopeOverrideProtocol?]? { get set }
     var messageFilterList: [EdifactMessageIdentifierProtocol?]? { get set }
     var schemaReferences: [EdifactSchemaReferenceProtocol] { get set }
     var validationOverrides: [EdifactValidationOverrideProtocol?]? { get set }
     var edifactDelimiterOverrides: [EdifactDelimiterOverrideProtocol?]? { get set }
}
