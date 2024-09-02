include "./Types.thrift"
include "./Exceptions.thrift"

service E2EEKeyBackupService {
    GetE2EEKeyBackupCertificatesResponse getE2EEKeyBackupCertificates(2: GetE2EEKeyBackupCertificatesRequest request) throws(1: E2EEKeyBackupException e),
}