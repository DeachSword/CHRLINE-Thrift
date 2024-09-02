include "./Types.thrift"

exception TalkException {
    1: required ErrorCode code,
    2: required string reason,
    3: required map<string, string> parameterMap,
}

exception ChannelException {
    1: required ChannelErrorCode code,
    2: required string reason,
    3: required map<string, string> parameterMap,
}

exception SquareException {
    1: required SquareErrorCode errorCode,
    2: required ErrorExtraInfo errorExtraInfo,
    3: required string reason,
}

exception LiffException {
    1: required LiffErrorCode code,
    2: required string message,
    3: required LiffErrorPayload payload,
}

exception HomeException {
    1: required HomeExceptionCode exceptionCode,
    2: required string message,
    3: required i64 retryTimeMillis,
}

exception ChatappException {
    1: required ChatappErrorCode code,
    2: required string reason,
}

exception MembershipException {
    1: required MembershipErrorCode code,
    2: required string reason,
    3: required map<string, string> parameterMap,
}

exception BotException {
    1: required BotErrorCode errorCode,
    2: required string reason,
    3: required map<string, string> parameterMap,
}

exception BotExternalException {
    1: required BotExternalErrorCode errorCode,
    2: required string reason,
}

exception LiffChannelException {
    1: required ChannelErrorCode code,
    2: required string reason,
    3: required map<string, string> parameterMap,
}

exception AccessTokenRefreshException {
    1: required AccessTokenRefreshErrorCode errorCode,
    2: required i64 reasonCode,
}

exception AccountEapConnectException {
    1: required AccountEapConnectErrorCode code,
    2: required string alertMessage,
    11: required WebAuthDetails webAuthDetails,
}

exception PwlessCredentialException {
    1: required PwlessCredentialErrorCode code,
    2: required string alertMessage,
}

exception SecondAuthFactorPinCodeException {
    1: required SecondAuthFactorPinCodeErrorCode code,
    2: required string alertMessage,
}

exception AuthException {
    1: required AuthErrorCode code,
    2: required string alertMessage,
    11: required WebAuthDetails webAuthDetails,
}

exception SecondaryPwlessLoginException {
    1: required SecondaryPwlessLoginErrorCode code,
    2: required string alertMessage,
}

exception SecondaryQrCodeException {
    1: required SecondaryQrCodeErrorCode code,
    2: required string alertMessage,
}

exception PaymentException {
    1: required PaymentErrorCode errorCode,
    2: required string debugReason,
    3: required string serverDefinedMessage,
    4: required map<string, string> errorDetailMap,
}

exception SettingsException {
    1: required SettingsErrorCode code,
    2: required string reason,
    3: required map<string, string> parameterMap,
}

exception TicketException {
    1: required i32 code,
    2: required string reason,
    3: required map<string, string> parameterMap,
}

exception ThingsException {
    1: required ThingsErrorCode code,
    2: required string reason,
}

exception SuggestTrialException {
    1: required SuggestTrialErrorCode code,
    2: required string reason,
    3: required map<string, string> parameterMap,
}

exception LFLPremiumException {
    1: required LFLPremiumErrorCode code,
}

exception WalletException {
    1: required WalletErrorCode code,
    2: required string reason,
    3: required map<string, string> attributes,
}

exception ShopException {
    1: required ShopErrorCode code,
    2: required string reason,
    3: required map<string, string> parameterMap,
}

exception PointException {
    1: required PointErrorCode code,
    2: required string reason,
    3: required map<string, string> extra,
}

exception E2EEKeyBackupException {
    1: required E2EEKeyBackupErrorCode code,
    2: required string reason,
    3: required map<string, string> parameterMap,
}

exception RejectedException {
    1: required RejectionReason rejectionReason,
    2: required string hint,
}

exception ServerFailureException {
    1: required string hint,
}

exception DeviceAttestationException {
}

exception AttestationRequiredException {
}