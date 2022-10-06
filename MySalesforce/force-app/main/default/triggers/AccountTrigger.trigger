Trigger AccountTrigger on Account(after insert, after update, before insert, before update) {
try{
    //system.debug('Check '+URL.getPath());
    system.debug('Check '+URL.getCurrentRequestUrl());
    system.debug('Check '+URL.getOrgDomainUrl());
    //system.debug('Check '+URL.getProtocol());
    //system.debug('Check '+URL.getRef());
    system.debug('Check '+URL.getSalesforceBaseUrl());
    for(Account a: Trigger.New) {
 	system.debug('before '+a.NumberofEmployees);
	//a.NumberofEmployees= 100000;
    system.debug('after '+a.NumberofEmployees);
	}
}
catch(exception e) {
system.debug(e.getmessage());
}
}