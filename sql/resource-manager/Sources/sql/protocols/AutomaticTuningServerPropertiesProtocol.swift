// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// AutomaticTuningServerPropertiesProtocol is server-level Automatic Tuning properties.
public protocol AutomaticTuningServerPropertiesProtocol : Codable {
     var desiredState: AutomaticTuningServerModeEnum? { get set }
     var actualState: AutomaticTuningServerModeEnum? { get set }
     var options: [String:AutomaticTuningServerOptionsProtocol?]? { get set }
}
