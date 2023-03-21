include "../CHRLINE.thrift"
include "./Types.thrift"
include "./Exceptions.thrift"

service AccessTokenRefreshService {
    RefreshAccessTokenResponse refresh(1: RefreshAccessTokenRequest request,) throws(1: AccessTokenRefreshException e);
}