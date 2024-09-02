include "./ttypes.thrift"
include "../Exceptions.thrift"

service DeviceAttestationService {
    GetAssertionChallengeResponse getAssertionChallenge() throws(1: DeviceAttestationException deviceAttestationException, 2: AttestationRequiredException attestationRequiredException),
    GetAttestationChallengeResponse getAttestationChallenge() throws(1: DeviceAttestationException deviceAttestationException),
    VerifyAssertionResponse verifyAssertion() throws(1: DeviceAttestationException deviceAttestationException),
    VerifyAttestationResponse verifyAttestation() throws(1: DeviceAttestationException deviceAttestationException),
}