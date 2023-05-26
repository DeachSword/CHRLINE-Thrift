include "../../CHRLINE.thrift"
include "../Types.thrift"
include "../Exceptions.thrift"
include "./ttypes.thrift"

service SecondaryQrCodeLoginService {
    CreateQrCodeForSecureResponse createQrCodeForSecure() throws(1: SecondaryQrCodeException e);
    QrCodeLoginV2Response qrCodeLoginV2ForSecure() throws(1: SecondaryQrCodeException e);
}