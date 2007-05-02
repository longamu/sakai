-- SAK-9808: Implement ability to delete threaded messages within Forums
-- need to add a bit field and index on it

alter table MFR_MESSAGE_T add DELETED number(1, 0) not null;
create index MFR_MESSAGE_DELETED_I on MFR_MESSAGE_T (DELETED);