include "../../CHRLINE.thrift"
include "../Types.thrift"
include "../Exceptions.thrift"
include "./ttypes.thrift"

service HomeSafetyCheckService {
    void deleteSafetyStatus(# 1: DeleteSafetyStatusRequest req,
) throws(1: HomeException e);
    GetDisasterCasesResponse getDisasterCases(1: GetDisasterCasesRequest req,) throws(1: HomeException e);
    void updateSafetyStatus(# 1: UpdateSafetyStatusRequest req,
) throws(1: HomeException e);
}