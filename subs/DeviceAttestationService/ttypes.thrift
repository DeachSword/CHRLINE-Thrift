struct GetAssertionChallengeResponse {
    1: required string sessionId,
    2: required string challenge,
}

struct GetAttestationChallengeResponse {
    1: required string sessionId,
    2: required string challenge,
}

struct VerifyAssertionResponse {
}

struct VerifyAttestationResponse {
}