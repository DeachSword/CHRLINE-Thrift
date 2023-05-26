struct CreateQrCodeForSecureResponse {
    1: string callbackUrl;
    2: i32 longPollingMaxCount;
    3: i32 longPollingIntervalSec;
    4: string nonce;
}

struct RefreshApiRetryPolicy {
    1: i64 initialDelayInMillis;
    2: i64 maxDelayInMillis;
    3: double multiplier;
    4: double jitterRate;
}

struct TokenV3IssueResult {
    1: string accessToken;
    2: string refreshToken;
    3: i64 durationUntilRefreshInSec;
    4: RefreshApiRetryPolicy refreshApiRetryPolicy;
    5: string loginSessionId;
    6: i64 tokenIssueTimeEpochSec;
}

struct QrCodeLoginV2Response {
    1: string certificate;
    2: string accessTokenV2;
    3: TokenV3IssueResult tokenV3IssueResult;
    4: string mid;
    9: i64 lastBindTimestamp;
    10: map<string, string> metaData;
}