{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Inspector.Types.Sum
-- Copyright   : (c) 2013-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Inspector.Types.Sum where

import           Network.AWS.Prelude

data AgentHealth
    = AHHealthy
    | AHUnhealthy
    deriving (Eq,Ord,Read,Show,Enum,Bounded,Data,Typeable,Generic)

instance FromText AgentHealth where
    parser = takeLowerText >>= \case
        "healthy" -> pure AHHealthy
        "unhealthy" -> pure AHUnhealthy
        e -> fromTextError $ "Failure parsing AgentHealth from value: '" <> e
           <> "'. Accepted values: HEALTHY, UNHEALTHY"

instance ToText AgentHealth where
    toText = \case
        AHHealthy -> "HEALTHY"
        AHUnhealthy -> "UNHEALTHY"

instance Hashable     AgentHealth
instance NFData       AgentHealth
instance ToByteString AgentHealth
instance ToQuery      AgentHealth
instance ToHeader     AgentHealth

instance ToJSON AgentHealth where
    toJSON = toJSONText

instance FromJSON AgentHealth where
    parseJSON = parseJSONText "AgentHealth"

data AgentHealthCode
    = Idle
    | Running
    | Shutdown
    | Throttled
    | Unhealthy
    | Unknown
    deriving (Eq,Ord,Read,Show,Enum,Bounded,Data,Typeable,Generic)

instance FromText AgentHealthCode where
    parser = takeLowerText >>= \case
        "idle" -> pure Idle
        "running" -> pure Running
        "shutdown" -> pure Shutdown
        "throttled" -> pure Throttled
        "unhealthy" -> pure Unhealthy
        "unknown" -> pure Unknown
        e -> fromTextError $ "Failure parsing AgentHealthCode from value: '" <> e
           <> "'. Accepted values: IDLE, RUNNING, SHUTDOWN, THROTTLED, UNHEALTHY, UNKNOWN"

instance ToText AgentHealthCode where
    toText = \case
        Idle -> "IDLE"
        Running -> "RUNNING"
        Shutdown -> "SHUTDOWN"
        Throttled -> "THROTTLED"
        Unhealthy -> "UNHEALTHY"
        Unknown -> "UNKNOWN"

instance Hashable     AgentHealthCode
instance NFData       AgentHealthCode
instance ToByteString AgentHealthCode
instance ToQuery      AgentHealthCode
instance ToHeader     AgentHealthCode

instance ToJSON AgentHealthCode where
    toJSON = toJSONText

instance FromJSON AgentHealthCode where
    parseJSON = parseJSONText "AgentHealthCode"

data AssessmentRunNotificationSNSStatusCode
    = AccessDenied
    | InternalError
    | Success
    | TopicDoesNotExist
    deriving (Eq,Ord,Read,Show,Enum,Bounded,Data,Typeable,Generic)

instance FromText AssessmentRunNotificationSNSStatusCode where
    parser = takeLowerText >>= \case
        "access_denied" -> pure AccessDenied
        "internal_error" -> pure InternalError
        "success" -> pure Success
        "topic_does_not_exist" -> pure TopicDoesNotExist
        e -> fromTextError $ "Failure parsing AssessmentRunNotificationSNSStatusCode from value: '" <> e
           <> "'. Accepted values: ACCESS_DENIED, INTERNAL_ERROR, SUCCESS, TOPIC_DOES_NOT_EXIST"

instance ToText AssessmentRunNotificationSNSStatusCode where
    toText = \case
        AccessDenied -> "ACCESS_DENIED"
        InternalError -> "INTERNAL_ERROR"
        Success -> "SUCCESS"
        TopicDoesNotExist -> "TOPIC_DOES_NOT_EXIST"

instance Hashable     AssessmentRunNotificationSNSStatusCode
instance NFData       AssessmentRunNotificationSNSStatusCode
instance ToByteString AssessmentRunNotificationSNSStatusCode
instance ToQuery      AssessmentRunNotificationSNSStatusCode
instance ToHeader     AssessmentRunNotificationSNSStatusCode

instance FromJSON AssessmentRunNotificationSNSStatusCode where
    parseJSON = parseJSONText "AssessmentRunNotificationSNSStatusCode"

data AssessmentRunState
    = CollectingData
    | Completed
    | CompletedWithErrors
    | Created
    | DataCollected
    | EvaluatingRules
    | Failed
    | StartDataCollectionInProgress
    | StartDataCollectionPending
    | StopDataCollectionPending
    deriving (Eq,Ord,Read,Show,Enum,Bounded,Data,Typeable,Generic)

instance FromText AssessmentRunState where
    parser = takeLowerText >>= \case
        "collecting_data" -> pure CollectingData
        "completed" -> pure Completed
        "completed_with_errors" -> pure CompletedWithErrors
        "created" -> pure Created
        "data_collected" -> pure DataCollected
        "evaluating_rules" -> pure EvaluatingRules
        "failed" -> pure Failed
        "start_data_collection_in_progress" -> pure StartDataCollectionInProgress
        "start_data_collection_pending" -> pure StartDataCollectionPending
        "stop_data_collection_pending" -> pure StopDataCollectionPending
        e -> fromTextError $ "Failure parsing AssessmentRunState from value: '" <> e
           <> "'. Accepted values: COLLECTING_DATA, COMPLETED, COMPLETED_WITH_ERRORS, CREATED, DATA_COLLECTED, EVALUATING_RULES, FAILED, START_DATA_COLLECTION_IN_PROGRESS, START_DATA_COLLECTION_PENDING, STOP_DATA_COLLECTION_PENDING"

instance ToText AssessmentRunState where
    toText = \case
        CollectingData -> "COLLECTING_DATA"
        Completed -> "COMPLETED"
        CompletedWithErrors -> "COMPLETED_WITH_ERRORS"
        Created -> "CREATED"
        DataCollected -> "DATA_COLLECTED"
        EvaluatingRules -> "EVALUATING_RULES"
        Failed -> "FAILED"
        StartDataCollectionInProgress -> "START_DATA_COLLECTION_IN_PROGRESS"
        StartDataCollectionPending -> "START_DATA_COLLECTION_PENDING"
        StopDataCollectionPending -> "STOP_DATA_COLLECTION_PENDING"

instance Hashable     AssessmentRunState
instance NFData       AssessmentRunState
instance ToByteString AssessmentRunState
instance ToQuery      AssessmentRunState
instance ToHeader     AssessmentRunState

instance ToJSON AssessmentRunState where
    toJSON = toJSONText

instance FromJSON AssessmentRunState where
    parseJSON = parseJSONText "AssessmentRunState"

data AssetType =
    EC2Instance
    deriving (Eq,Ord,Read,Show,Enum,Bounded,Data,Typeable,Generic)

instance FromText AssetType where
    parser = takeLowerText >>= \case
        "ec2-instance" -> pure EC2Instance
        e -> fromTextError $ "Failure parsing AssetType from value: '" <> e
           <> "'. Accepted values: ec2-instance"

instance ToText AssetType where
    toText = \case
        EC2Instance -> "ec2-instance"

instance Hashable     AssetType
instance NFData       AssetType
instance ToByteString AssetType
instance ToQuery      AssetType
instance ToHeader     AssetType

instance FromJSON AssetType where
    parseJSON = parseJSONText "AssetType"

data FailedItemErrorCode
    = FIECAccessDenied
    | FIECDuplicateARN
    | FIECInternalError
    | FIECInvalidARN
    | FIECItemDoesNotExist
    | FIECLimitExceeded
    deriving (Eq,Ord,Read,Show,Enum,Bounded,Data,Typeable,Generic)

instance FromText FailedItemErrorCode where
    parser = takeLowerText >>= \case
        "access_denied" -> pure FIECAccessDenied
        "duplicate_arn" -> pure FIECDuplicateARN
        "internal_error" -> pure FIECInternalError
        "invalid_arn" -> pure FIECInvalidARN
        "item_does_not_exist" -> pure FIECItemDoesNotExist
        "limit_exceeded" -> pure FIECLimitExceeded
        e -> fromTextError $ "Failure parsing FailedItemErrorCode from value: '" <> e
           <> "'. Accepted values: ACCESS_DENIED, DUPLICATE_ARN, INTERNAL_ERROR, INVALID_ARN, ITEM_DOES_NOT_EXIST, LIMIT_EXCEEDED"

instance ToText FailedItemErrorCode where
    toText = \case
        FIECAccessDenied -> "ACCESS_DENIED"
        FIECDuplicateARN -> "DUPLICATE_ARN"
        FIECInternalError -> "INTERNAL_ERROR"
        FIECInvalidARN -> "INVALID_ARN"
        FIECItemDoesNotExist -> "ITEM_DOES_NOT_EXIST"
        FIECLimitExceeded -> "LIMIT_EXCEEDED"

instance Hashable     FailedItemErrorCode
instance NFData       FailedItemErrorCode
instance ToByteString FailedItemErrorCode
instance ToQuery      FailedItemErrorCode
instance ToHeader     FailedItemErrorCode

instance FromJSON FailedItemErrorCode where
    parseJSON = parseJSONText "FailedItemErrorCode"

data InspectorEvent
    = AssessmentRunCompleted
    | AssessmentRunStarted
    | AssessmentRunStateChanged
    | FindingReported
    | Other
    deriving (Eq,Ord,Read,Show,Enum,Bounded,Data,Typeable,Generic)

instance FromText InspectorEvent where
    parser = takeLowerText >>= \case
        "assessment_run_completed" -> pure AssessmentRunCompleted
        "assessment_run_started" -> pure AssessmentRunStarted
        "assessment_run_state_changed" -> pure AssessmentRunStateChanged
        "finding_reported" -> pure FindingReported
        "other" -> pure Other
        e -> fromTextError $ "Failure parsing InspectorEvent from value: '" <> e
           <> "'. Accepted values: ASSESSMENT_RUN_COMPLETED, ASSESSMENT_RUN_STARTED, ASSESSMENT_RUN_STATE_CHANGED, FINDING_REPORTED, OTHER"

instance ToText InspectorEvent where
    toText = \case
        AssessmentRunCompleted -> "ASSESSMENT_RUN_COMPLETED"
        AssessmentRunStarted -> "ASSESSMENT_RUN_STARTED"
        AssessmentRunStateChanged -> "ASSESSMENT_RUN_STATE_CHANGED"
        FindingReported -> "FINDING_REPORTED"
        Other -> "OTHER"

instance Hashable     InspectorEvent
instance NFData       InspectorEvent
instance ToByteString InspectorEvent
instance ToQuery      InspectorEvent
instance ToHeader     InspectorEvent

instance ToJSON InspectorEvent where
    toJSON = toJSONText

instance FromJSON InspectorEvent where
    parseJSON = parseJSONText "InspectorEvent"

data Locale =
    EnUs
    deriving (Eq,Ord,Read,Show,Enum,Bounded,Data,Typeable,Generic)

instance FromText Locale where
    parser = takeLowerText >>= \case
        "en_us" -> pure EnUs
        e -> fromTextError $ "Failure parsing Locale from value: '" <> e
           <> "'. Accepted values: EN_US"

instance ToText Locale where
    toText = \case
        EnUs -> "EN_US"

instance Hashable     Locale
instance NFData       Locale
instance ToByteString Locale
instance ToQuery      Locale
instance ToHeader     Locale

instance ToJSON Locale where
    toJSON = toJSONText

data Severity
    = High
    | Informational
    | Low
    | Medium
    | Undefined
    deriving (Eq,Ord,Read,Show,Enum,Bounded,Data,Typeable,Generic)

instance FromText Severity where
    parser = takeLowerText >>= \case
        "high" -> pure High
        "informational" -> pure Informational
        "low" -> pure Low
        "medium" -> pure Medium
        "undefined" -> pure Undefined
        e -> fromTextError $ "Failure parsing Severity from value: '" <> e
           <> "'. Accepted values: High, Informational, Low, Medium, Undefined"

instance ToText Severity where
    toText = \case
        High -> "High"
        Informational -> "Informational"
        Low -> "Low"
        Medium -> "Medium"
        Undefined -> "Undefined"

instance Hashable     Severity
instance NFData       Severity
instance ToByteString Severity
instance ToQuery      Severity
instance ToHeader     Severity

instance ToJSON Severity where
    toJSON = toJSONText

instance FromJSON Severity where
    parseJSON = parseJSONText "Severity"
