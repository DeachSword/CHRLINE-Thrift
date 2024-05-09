
include "./Types.thrift"




exception TalkException {
    1: ErrorCode code;
    2: string reason;
    3: map<string, string> parameterMap;
}


exception ChannelException {
    1: ChannelErrorCode code;
    2: string reason;
    3: map<string, string> parameterMap;
}


exception SquareException {
    1: SquareErrorCode errorCode;
    2: ErrorExtraInfo errorExtraInfo;
    3: string reason;
}


exception LiffException {
    1: LiffErrorCode code;
    2: string message;
    3: LiffErrorPayload payload;
}


exception HomeException {
    1: HomeExceptionCode exceptionCode;
    2: string message;
    3: i64 retryTimeMillis;
}


exception ChatappException {
    1: ChatappErrorCode code;
    2: string reason;
}


exception MembershipException {
    1: MembershipErrorCode code;
    2: string reason;
    3: map<string, string> parameterMap;
}


exception BotException {
    1: BotErrorCode errorCode;
    2: string reason;
    3: map<string, string> parameterMap;
}


exception BotExternalException {
    1: BotExternalErrorCode errorCode;
    2: string reason;
}


exception LiffChannelException {
    1: ChannelErrorCode code;
    2: string reason;
    3: map<string, string> parameterMap;
}


exception AccessTokenRefreshException {
    1: AccessTokenRefreshErrorCode errorCode;
    2: i64 reasonCode;
}


exception AccountEapConnectException {
    1: AccountEapConnectErrorCode code;
    2: string alertMessage;
    11: WebAuthDetails webAuthDetails
}


exception PwlessCredentialException {
    1: PwlessCredentialErrorCode code;
    2: string alertMessage;
}


exception SecondAuthFactorPinCodeException {
    1: SecondAuthFactorPinCodeErrorCode code;
    2: string alertMessage;
}


exception AuthException {
    1: AuthErrorCode code;
    2: string alertMessage;
    11: WebAuthDetails webAuthDetails
}


exception SecondaryPwlessLoginException {
    1: SecondaryPwlessLoginErrorCode code;
    2: string alertMessage;
}


exception SecondaryQrCodeException {
    1: SecondaryQrCodeErrorCode code;
    2: string alertMessage;
}


exception PaymentException {
    1: PaymentErrorCode errorCode;
    2: string debugReason;
    3: string serverDefinedMessage;
    4: map<string, string> errorDetailMap;
}


exception SettingsException {
    1: SettingsErrorCode code;
    2: string reason;
    3: map<string, string> parameterMap;
}


exception TicketException {
    1: i32 code;
    2: string reason;
    3: map<string, string> parameterMap;
}


exception ThingsException {
    1: ThingsErrorCode code;
    2: string reason;
}


exception SuggestTrialException {
    1: SuggestTrialErrorCode code;
    2: string reason;
    3: map<string, string> parameterMap;
}


exception LFLPremiumException {
    1: LFLPremiumErrorCode code;
}


exception WalletException {
    1: WalletErrorCode code;
    2: string reason;
    3: map<string, string> attributes;
}


exception ShopException {
    1: ShopErrorCode code;
    2: string reason;
    3: map<string, string> parameterMap;
}


exception PointException {
    1: PointErrorCode code;
    2: string reason;
    3: map<string, string> extra;
}


exception E2EEKeyBackupException {
    1: E2EEKeyBackupErrorCode code;
    2: string reason;
    3: map<string, string> parameterMap;
}


exception RejectedException {
    1: RejectionReason rejectionReason;
    2: string hint;
}

exception ServerFailureException {
    1: string hint;
}

