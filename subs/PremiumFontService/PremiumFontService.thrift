include "./ttypes.thrift"
include "../Exceptions.thrift"

service PremiumFontService {
    GetAccessTokenResponse getAccessToken() throws(1: TalkException e),
    GetFontMetasResponse getFontMetas() throws(1: TalkException e),
}