// IssueType enumerates the values for issue type.

// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
public enum IssueTypeEnum: String, Codable {
// AppCrash specifies the app crash state for issue type.
    case AppCrash = "AppCrash"
// AppDeployment specifies the app deployment state for issue type.
    case AppDeployment = "AppDeployment"
// AseDeployment specifies the ase deployment state for issue type.
    case AseDeployment = "AseDeployment"
// Other specifies the other state for issue type.
    case Other = "Other"
// PlatformIssue specifies the platform issue state for issue type.
    case PlatformIssue = "PlatformIssue"
// RuntimeIssueDetected specifies the runtime issue detected state for issue type.
    case RuntimeIssueDetected = "RuntimeIssueDetected"
// ServiceIncident specifies the service incident state for issue type.
    case ServiceIncident = "ServiceIncident"
// UserIssue specifies the user issue state for issue type.
    case UserIssue = "UserIssue"
}
