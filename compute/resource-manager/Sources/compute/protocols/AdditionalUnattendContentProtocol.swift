// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// AdditionalUnattendContentProtocol is specifies additional XML formatted information that can be included in the
// Unattend.xml file, which is used by Windows Setup. Contents are defined by setting name, component name, and the
// pass in which the content is applied.
public protocol AdditionalUnattendContentProtocol : Codable {
     var passName: PassNamesEnum? { get set }
     var componentName: ComponentNamesEnum? { get set }
     var settingName: SettingNamesEnum? { get set }
     var content: String? { get set }
}