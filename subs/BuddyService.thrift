include "./Types.thrift"

service BuddyService {
    BuddyDetail getBuddyDetail(4: string buddyMid) throws(1: TalkException e);
}