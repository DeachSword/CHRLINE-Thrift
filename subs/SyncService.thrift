include "./Types.thrift"

service SyncService {
    SyncResponse sync() throws(1: TalkException e);
}