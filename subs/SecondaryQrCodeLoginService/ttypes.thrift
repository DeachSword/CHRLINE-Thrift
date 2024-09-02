struct CreateQrCodeForSecureResponse {
    1: required string callbackUrl,
    2: required i32 longPollingMaxCount,
    3: required i32 longPollingIntervalSec,
    4: required string nonce,
}

struct RefreshApiRetryPolicy {
    1: required i64 initialDelayInMillis,
    2: required i64 maxDelayInMillis,
    3: required double multiplier,
    4: required double jitterRate,
}

struct TokenV3IssueResult {
    1: required string accessToken,
    2: required string refreshToken,
    3: required i64 durationUntilRefreshInSec,
    4: required RefreshApiRetryPolicy refreshApiRetryPolicy,
    5: required string loginSessionId,
    6: required i64 tokenIssueTimeEpochSec,
}

struct QrCodeLoginV2Response {
    1: required string certificate,
    2: required string accessTokenV2,
    3: required TokenV3IssueResult tokenV3IssueResult,
    4: required string mid,
    9: required i64 lastBindTimestamp,
    10: required map<string, string> metaData,
}