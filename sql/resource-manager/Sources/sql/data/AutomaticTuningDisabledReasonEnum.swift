// AutomaticTuningDisabledReason enumerates the values for automatic tuning disabled reason.

// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
public enum AutomaticTuningDisabledReasonEnum: String, Codable
{
// AutoConfigured specifies the auto configured state for automatic tuning disabled reason.
    case AutoConfigured = "AutoConfigured"
// Default specifies the default state for automatic tuning disabled reason.
    case Default = "Default"
// Disabled specifies the disabled state for automatic tuning disabled reason.
    case Disabled = "Disabled"
// InheritedFromServer specifies the inherited from server state for automatic tuning disabled reason.
    case InheritedFromServer = "InheritedFromServer"
// NotSupported specifies the not supported state for automatic tuning disabled reason.
    case NotSupported = "NotSupported"
// QueryStoreOff specifies the query store off state for automatic tuning disabled reason.
    case QueryStoreOff = "QueryStoreOff"
// QueryStoreReadOnly specifies the query store read only state for automatic tuning disabled reason.
    case QueryStoreReadOnly = "QueryStoreReadOnly"
}
