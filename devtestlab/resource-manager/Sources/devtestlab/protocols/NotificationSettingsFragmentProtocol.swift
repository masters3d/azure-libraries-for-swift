// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// NotificationSettingsFragmentProtocol is notification settings for a schedule.
public protocol NotificationSettingsFragmentProtocol : Codable {
     var status: NotificationStatusEnum? { get set }
     var timeInMinutes: Int32? { get set }
     var webhookUrl: String? { get set }
}
