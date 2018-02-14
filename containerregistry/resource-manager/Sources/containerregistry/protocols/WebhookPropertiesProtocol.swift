// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// WebhookPropertiesProtocol is the properties of a webhook.
public protocol WebhookPropertiesProtocol : Codable {
     var status: WebhookStatusEnum? { get set }
     var scope: String? { get set }
     var actions: [WebhookActionEnum] { get set }
     var provisioningState: ProvisioningStateEnum? { get set }
}
