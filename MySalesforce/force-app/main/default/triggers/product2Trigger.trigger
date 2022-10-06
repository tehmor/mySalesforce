trigger product2Trigger on Product2 (after update) {
    if(Trigger.isAfter && Trigger.New != null){
        Product2Helper.AfterUpdate(Trigger.New, Trigger.Old);
    }
}