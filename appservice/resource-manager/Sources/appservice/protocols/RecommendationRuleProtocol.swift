// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// RecommendationRuleProtocol is represents a recommendation rule that the recommendation engine can perform.
public protocol RecommendationRuleProtocol : Codable {
     var name: String? { get set }
     var displayName: String? { get set }
     var message: String? { get set }
     var recommendationId: String? { get set }
     var description: String? { get set }
     var actionName: String? { get set }
     var level: NotificationLevelEnum? { get set }
     var channels: ChannelsEnum? { get set }
     var tags: [String]? { get set }
     var isDynamic: Bool? { get set }
     var extensionName: String? { get set }
     var bladeName: String? { get set }
     var forwardLink: String? { get set }
}