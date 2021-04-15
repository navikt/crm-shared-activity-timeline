@isTest
public without sharing class ObjectTimeline_QueriesHelperTest {
    // --------------------------------------------------- //
    // ----------------- getMetadataQuery ---------------- //
    // --------------------------------------------------- //

    @isTest
    private static void testGetMetadataQuery_creatableWithAppName() {
        Test.StartTest();
        String actual = ObjectTimeline_QueriesHelper.getMetadataQuery(true, 'test');
        Test.StopTest();

        String expected = 'SELECT Id, SObjectAssigneeId__c, SObjectParent__c, SObjectRelationshipField__c, CreateableObject_NoOverride__c, Object_Timeline_Child__r.SLDS_Timeline_Color__c, Object_Timeline_Child__r.SLDS_Icon__c, Object_Timeline_Child__r.SLDS_Dropdown_Icon__c,  Object_Timeline_Child__r.CreateableObject_TextEnglish__c, Object_Timeline_Child__r.CreateableObject_TextNorwegian__c, Object_Timeline_Child__r.CreateableObject_RecordType__c,  Object_Timeline_Child__r.SObjectDateField__c, Object_Timeline_Child__r.SObjectDateFieldIsDate__c,  Object_Timeline_Child__r.SObjectTypeField__c, Object_Timeline_Child__r.SObjectTypeValue__c,  Object_Timeline_Child__r.SObjectTitle__c, Object_Timeline_Child__r.SObjectName__c,  Object_Timeline_Child__r.SObjectRelatedUserId__c, IsMacro__c, Object_Timeline_Child__r.CreateableObject_Field1__c, Object_Timeline_Child__r.CreateableObject_Value1__c,  Object_Timeline_Child__r.CreateableObject_Field2__c, Object_Timeline_Child__r.CreateableObject_Value2__c,  Object_Timeline_Child__r.CreateableObject_Field3__c, Object_Timeline_Child__r.CreateableObject_Value3__c,  Object_Timeline_Child__r.SubtitlePastEnglish__c, Object_Timeline_Child__r.SubtitlePastNorwegian__c,  Object_Timeline_Child__r.SubtitleFutureEnglish__c, Object_Timeline_Child__r.SubtitleFutureNorwegian__c,  Object_Timeline_Child__r.SubtitleRelatedUserPrepositionEng__c, Object_Timeline_Child__r.SubtitleRelatedUserPrepositionNor__c FROM ObjectTimelineParent__mdt WHERE SObjectParent__c = : parentSObjectType AND CreateableObject_Checkbox__c = true AND ConfigId__c = : appName ORDER BY IsMacro__c, Object_Timeline_Child__c';

        System.assertEquals(expected, actual);
    }

    @isTest
    private static void testGetMetadataQuery_creatableWithoutAppName() {
        Test.StartTest();
        String actual = ObjectTimeline_QueriesHelper.getMetadataQuery(true, null);
        Test.StopTest();

        String expected = 'SELECT Id, SObjectAssigneeId__c, SObjectParent__c, SObjectRelationshipField__c, CreateableObject_NoOverride__c, Object_Timeline_Child__r.SLDS_Timeline_Color__c, Object_Timeline_Child__r.SLDS_Icon__c, Object_Timeline_Child__r.SLDS_Dropdown_Icon__c,  Object_Timeline_Child__r.CreateableObject_TextEnglish__c, Object_Timeline_Child__r.CreateableObject_TextNorwegian__c, Object_Timeline_Child__r.CreateableObject_RecordType__c,  Object_Timeline_Child__r.SObjectDateField__c, Object_Timeline_Child__r.SObjectDateFieldIsDate__c,  Object_Timeline_Child__r.SObjectTypeField__c, Object_Timeline_Child__r.SObjectTypeValue__c,  Object_Timeline_Child__r.SObjectTitle__c, Object_Timeline_Child__r.SObjectName__c,  Object_Timeline_Child__r.SObjectRelatedUserId__c, IsMacro__c, Object_Timeline_Child__r.CreateableObject_Field1__c, Object_Timeline_Child__r.CreateableObject_Value1__c,  Object_Timeline_Child__r.CreateableObject_Field2__c, Object_Timeline_Child__r.CreateableObject_Value2__c,  Object_Timeline_Child__r.CreateableObject_Field3__c, Object_Timeline_Child__r.CreateableObject_Value3__c,  Object_Timeline_Child__r.SubtitlePastEnglish__c, Object_Timeline_Child__r.SubtitlePastNorwegian__c,  Object_Timeline_Child__r.SubtitleFutureEnglish__c, Object_Timeline_Child__r.SubtitleFutureNorwegian__c,  Object_Timeline_Child__r.SubtitleRelatedUserPrepositionEng__c, Object_Timeline_Child__r.SubtitleRelatedUserPrepositionNor__c FROM ObjectTimelineParent__mdt WHERE SObjectParent__c = : parentSObjectType AND CreateableObject_Checkbox__c = true AND ConfigId__c = null ORDER BY IsMacro__c, Object_Timeline_Child__c';

        System.assertEquals(expected, actual);
    }

    @isTest
    private static void testGetMetadataQuery_nonCreatableWithAppName() {
        Test.StartTest();
        String actual = ObjectTimeline_QueriesHelper.getMetadataQuery(false, 'test');
        Test.StopTest();

        String expected = 'SELECT Id, SObjectAssigneeId__c, SObjectParent__c, SObjectRelationshipField__c, CreateableObject_NoOverride__c, Object_Timeline_Child__r.SLDS_Timeline_Color__c, Object_Timeline_Child__r.SLDS_Icon__c, Object_Timeline_Child__r.SLDS_Dropdown_Icon__c,  Object_Timeline_Child__r.CreateableObject_TextEnglish__c, Object_Timeline_Child__r.CreateableObject_TextNorwegian__c, Object_Timeline_Child__r.CreateableObject_RecordType__c,  Object_Timeline_Child__r.SObjectDateField__c, Object_Timeline_Child__r.SObjectDateFieldIsDate__c,  Object_Timeline_Child__r.SObjectTypeField__c, Object_Timeline_Child__r.SObjectTypeValue__c,  Object_Timeline_Child__r.SObjectTitle__c, Object_Timeline_Child__r.SObjectName__c,  Object_Timeline_Child__r.SObjectRelatedUserId__c, IsMacro__c, Object_Timeline_Child__r.CreateableObject_Field1__c, Object_Timeline_Child__r.CreateableObject_Value1__c,  Object_Timeline_Child__r.CreateableObject_Field2__c, Object_Timeline_Child__r.CreateableObject_Value2__c,  Object_Timeline_Child__r.CreateableObject_Field3__c, Object_Timeline_Child__r.CreateableObject_Value3__c,  Object_Timeline_Child__r.SubtitlePastEnglish__c, Object_Timeline_Child__r.SubtitlePastNorwegian__c,  Object_Timeline_Child__r.SubtitleFutureEnglish__c, Object_Timeline_Child__r.SubtitleFutureNorwegian__c,  Object_Timeline_Child__r.SubtitleRelatedUserPrepositionEng__c, Object_Timeline_Child__r.SubtitleRelatedUserPrepositionNor__c FROM ObjectTimelineParent__mdt WHERE SObjectParent__c = : parentSObjectType AND IsActive__c = true AND ConfigId__c = : appName ORDER BY IsMacro__c, Object_Timeline_Child__c';

        System.assertEquals(expected, actual);
    }

    @isTest
    private static void testGetMetadataQuery_nonCreatableWithoutAppName() {
        Test.StartTest();
        String actual = ObjectTimeline_QueriesHelper.getMetadataQuery(false, null);
        Test.StopTest();

        String expected = 'SELECT Id, SObjectAssigneeId__c, SObjectParent__c, SObjectRelationshipField__c, CreateableObject_NoOverride__c, Object_Timeline_Child__r.SLDS_Timeline_Color__c, Object_Timeline_Child__r.SLDS_Icon__c, Object_Timeline_Child__r.SLDS_Dropdown_Icon__c,  Object_Timeline_Child__r.CreateableObject_TextEnglish__c, Object_Timeline_Child__r.CreateableObject_TextNorwegian__c, Object_Timeline_Child__r.CreateableObject_RecordType__c,  Object_Timeline_Child__r.SObjectDateField__c, Object_Timeline_Child__r.SObjectDateFieldIsDate__c,  Object_Timeline_Child__r.SObjectTypeField__c, Object_Timeline_Child__r.SObjectTypeValue__c,  Object_Timeline_Child__r.SObjectTitle__c, Object_Timeline_Child__r.SObjectName__c,  Object_Timeline_Child__r.SObjectRelatedUserId__c, IsMacro__c, Object_Timeline_Child__r.CreateableObject_Field1__c, Object_Timeline_Child__r.CreateableObject_Value1__c,  Object_Timeline_Child__r.CreateableObject_Field2__c, Object_Timeline_Child__r.CreateableObject_Value2__c,  Object_Timeline_Child__r.CreateableObject_Field3__c, Object_Timeline_Child__r.CreateableObject_Value3__c,  Object_Timeline_Child__r.SubtitlePastEnglish__c, Object_Timeline_Child__r.SubtitlePastNorwegian__c,  Object_Timeline_Child__r.SubtitleFutureEnglish__c, Object_Timeline_Child__r.SubtitleFutureNorwegian__c,  Object_Timeline_Child__r.SubtitleRelatedUserPrepositionEng__c, Object_Timeline_Child__r.SubtitleRelatedUserPrepositionNor__c FROM ObjectTimelineParent__mdt WHERE SObjectParent__c = : parentSObjectType AND IsActive__c = true AND ConfigId__c = null ORDER BY IsMacro__c, Object_Timeline_Child__c';

        System.assertEquals(expected, actual);
    }

    // --------------------------------------------------- //
    // --------------------- getQuery -------------------- //
    // --------------------------------------------------- //

    @isTest
    private static void testGetQuery_event() {
        List<ObjectTimelineParent__mdt> sObjectsToQuery = queryMdt(new List<String>{ 'Event', 'Task' });
        Id recordId = ObjectTimeline_TestDataFactory.createAccount('test').Id;

        Test.StartTest();
        String results = ObjectTimeline_QueriesHelper.getQuery(sObjectsToQuery, sObjectsToQuery[0], recordId, 5);
        Test.StopTest();

        String expectedEvent =
            ' SELECT Id,ActivityDate,Subject,OwnerId,WhoId,ActivityDateTime,IsAllDayEvent,DurationInMinutes FROM Event WHERE WhatId = \'' +
            recordId +
            '\' AND (ActivityDate = LAST_N_MONTHS:4 OR ActivityDate = THIS_MONTH OR ActivityDate > TODAY) ORDER BY ActivityDate';
        System.assertEquals(expectedEvent, results, 'should get the full soql query');
    }

    @isTest
    private static void testGetQuery_task() {
        List<ObjectTimelineParent__mdt> sObjectsToQuery = queryMdt(new List<String>{ 'Event', 'Task' });
        Id recordId = ObjectTimeline_TestDataFactory.createAccount('test').Id;

        Test.StartTest();
        String results = ObjectTimeline_QueriesHelper.getQuery(sObjectsToQuery, sObjectsToQuery[1], recordId, 5);
        Test.StopTest();

        String expected =
            ' SELECT Id,ActivityDate,Subject,OwnerId,WhoId,Type,Status,CreatedDate FROM Task WHERE WhatId = \'' +
            recordId +
            '\' AND TaskSubType != \'Email\' AND ( (ActivityDate = LAST_N_MONTHS:4 OR ActivityDate = THIS_MONTH OR ActivityDate > TODAY) OR (CreatedDate <= TODAY AND ActivityDate = null) ) ORDER BY ActivityDate';
        System.assertEquals(expected, results, 'the task query should be correctly seen');
    }

    // --------------------------------------------------- //
    // ------------------ getQueryFields ----------------- //
    // --------------------------------------------------- //

    @isTest
    private static void testGetQueryFields_Event() {
        List<ObjectTimelineParent__mdt> sObjectsToQuery = queryMdt(new List<String>{ 'Event' });

        String expected = 'Id,ActivityDate,Subject,OwnerId,WhoId,ActivityDateTime,IsAllDayEvent,DurationInMinutes';

        Test.StartTest();
        String actual = ObjectTimeline_QueriesHelper.getQueryFields(sObjectsToQuery, sObjectsToQuery[0]);
        Test.StopTest();

        System.assertEquals(expected, actual, 'The fields should be the same');
    }

    @isTest
    private static void testGetQueryFields_Task() {
        List<ObjectTimelineParent__mdt> sObjectsToQuery = queryMdt(new List<String>{ 'Task' });

        String expected = 'Id,ActivityDate,Subject,OwnerId,WhoId,Type,Status,CreatedDate';

        Test.StartTest();
        String actual = ObjectTimeline_QueriesHelper.getQueryFields(sObjectsToQuery, sObjectsToQuery[0]);
        Test.StopTest();

        System.assertEquals(expected, actual, 'The fields should be the same');
    }

    // --------------------------------------------------- //
    // ---------------- getQueryParameters --------------- //
    // --------------------------------------------------- //

    @isTest
    private static void testGetQueryParameters_event() {
        ObjectTimelineParent__mdt mdt = queryMdt(new List<String>{ 'Event' })[0];
        Id recordId = ObjectTimeline_TestDataFactory.createAccount('test').Id;

        Test.StartTest();
        String results = ObjectTimeline_QueriesHelper.getQueryParameters(mdt, recordId, 5);
        Test.StopTest();

        String expected =
            'WhatId = \'' +
            recordId +
            '\' AND (ActivityDate = LAST_N_MONTHS:4 OR ActivityDate = THIS_MONTH OR ActivityDate > TODAY)';
        System.assertEquals(expected, results, 'should have outputted the correct Event SOQL parameters');
    }

    @isTest
    private static void testGetQueryParameters_task() {
        ObjectTimelineParent__mdt mdt = queryMdt(new List<String>{ 'Task' })[0];
        Id recordId = ObjectTimeline_TestDataFactory.createAccount('test').Id;

        Test.StartTest();
        String results = ObjectTimeline_QueriesHelper.getQueryParameters(mdt, recordId, 5);
        Test.StopTest();

        String expected =
            'WhatId = \'' +
            recordId +
            '\' AND TaskSubType != \'Email\' AND ( (ActivityDate = LAST_N_MONTHS:4 OR ActivityDate = THIS_MONTH OR ActivityDate > TODAY) OR (CreatedDate <= TODAY AND ActivityDate = null) )';
        System.assertEquals(expected, results, 'the task query should be correctly seen');
    }

    // --------------------------------------------------- //
    // ------------------ buildSoqlQuery ----------------- //
    // --------------------------------------------------- //

    @isTest
    private static void testBuildSoqlQuery() {
        Test.StartTest();
        String results = ObjectTimeline_QueriesHelper.buildSoqlQuery('Count(Id), Id', 'Account', 'Id != null', 'Id');
        Test.StopTest();

        System.assertEquals(
            ' SELECT Count(Id), Id FROM Account WHERE Id != null ORDER BY Id',
            results,
            'the output soql query should match the expected output'
        );
    }

    @isTest
    private static void testBuildSoqlQuery_nullOrderBy() {
        Test.StartTest();
        String results = ObjectTimeline_QueriesHelper.buildSoqlQuery('Count(Id), Id', 'Account', 'Id != null', null);
        Test.StopTest();

        System.assertEquals(
            ' SELECT Count(Id), Id FROM Account WHERE Id != null',
            results,
            'the output soql query should match the expected output'
        );
    }

    @isTest
    private static void testBuildSoqlQuery_emptyOrderBy() {
        Test.StartTest();
        String results = ObjectTimeline_QueriesHelper.buildSoqlQuery('Count(Id), Id', 'Account', 'Id != null', '');
        Test.StopTest();

        System.assertEquals(
            ' SELECT Count(Id), Id FROM Account WHERE Id != null',
            results,
            'the output soql query should match the expected output'
        );
    }

    @isTest
    private static void testBuildSoqlQuery_nullParameter() {
        Test.StartTest();
        String results = ObjectTimeline_QueriesHelper.buildSoqlQuery('Count(Id), Id', 'Account', null, 'Id');
        Test.StopTest();

        System.assertEquals(
            ' SELECT Count(Id), Id FROM Account ORDER BY Id',
            results,
            'the output soql query should match the expected output'
        );
    }

    @isTest
    private static void testBuildSoqlQuery_emptyParameter() {
        Test.StartTest();
        String results = ObjectTimeline_QueriesHelper.buildSoqlQuery('Count(Id), Id', 'Account', '', 'Id');
        Test.StopTest();

        System.assertEquals(
            ' SELECT Count(Id), Id FROM Account ORDER BY Id',
            results,
            'the output soql query should match the expected output'
        );
    }

    // --------------------------------------------------- //
    // ---------------- addTaskParameters ---------------- //
    // --------------------------------------------------- //

    @isTest
    private static void testAddTaskParameters() {
        ObjectTimelineParent__mdt mdt = ObjectTimeline_QueriesHelperTest.queryMdt(new List<String>{ 'Task' })[0];

        Test.StartTest();
        String results = ObjectTimeline_QueriesHelper.addTaskParameters(mdt, 5);
        Test.StopTest();

        String expected = 'TaskSubType != \'Email\' AND ( (ActivityDate = LAST_N_MONTHS:4 OR ActivityDate = THIS_MONTH OR ActivityDate > TODAY) OR (CreatedDate <= TODAY AND ActivityDate = null) )';
        System.assertEquals(expected, results, 'the task query should be correctly seen');
    }

    // --------------------------------------------------- //
    // --------------------- getTime --------------------- //
    // --------------------------------------------------- //

    @isTest
    private static void testGetTime_true() {
        Test.StartTest();
        String results = ObjectTimeline_QueriesHelper.getTime(true);
        Test.StopTest();

        System.assertEquals(
            'TODAY',
            results,
            'the results from getTime(true) should just be TODAY, because SOQL supports the value'
        );
    }

    @isTest
    private static void testGetTime_false() {
        Test.StartTest();
        String results = ObjectTimeline_QueriesHelper.getTime(false);
        Test.StopTest();

        System.assert(
            results.startsWith(('' + System.today()).replace(' 00:00:00', '')),
            'the results from getTime(false) should be a datetime as string, because NOW is not supported in SOQL'
        );
    }

    // ------------------------------------------------------------------ //
    // ------------------------------------------------------------------ //
    // ------------------------ HELPER FUNCTIONS ------------------------ //
    // ------------------------------------------------------------------ //
    // ------------------------------------------------------------------ //

    public static List<ObjectTimelineParent__mdt> queryMdt(List<String> types) {
        return [
            SELECT
                Id,
                SObjectAssigneeId__c,
                SObjectParent__c,
                SObjectRelationshipField__c,
                Object_Timeline_Child__r.SLDS_Timeline_Color__c,
                Object_Timeline_Child__r.SLDS_Icon__c,
                Object_Timeline_Child__r.SLDS_Dropdown_Icon__c,
                Object_Timeline_Child__r.CreateableObject_TextEnglish__c,
                Object_Timeline_Child__r.CreateableObject_TextNorwegian__c,
                Object_Timeline_Child__r.CreateableObject_RecordType__c,
                Object_Timeline_Child__r.SObjectDateField__c,
                Object_Timeline_Child__r.SObjectDateFieldIsDate__c,
                Object_Timeline_Child__r.SObjectTypeField__c,
                Object_Timeline_Child__r.SObjectTypeValue__c,
                Object_Timeline_Child__r.SObjectTitle__c,
                Object_Timeline_Child__r.SObjectName__c,
                Object_Timeline_Child__r.SObjectRelatedUserId__c,
                Object_Timeline_Child__r.CreateableObject_Field1__c,
                Object_Timeline_Child__r.CreateableObject_Value1__c,
                Object_Timeline_Child__r.CreateableObject_Field2__c,
                Object_Timeline_Child__r.CreateableObject_Value2__c,
                Object_Timeline_Child__r.CreateableObject_Field3__c,
                Object_Timeline_Child__r.CreateableObject_Value3__c,
                Object_Timeline_Child__r.SubtitlePastEnglish__c,
                Object_Timeline_Child__r.SubtitlePastNorwegian__c,
                Object_Timeline_Child__r.SubtitleFutureEnglish__c,
                Object_Timeline_Child__r.SubtitleFutureNorwegian__c,
                Object_Timeline_Child__r.SubtitleRelatedUserPrepositionEng__c,
                Object_Timeline_Child__r.SubtitleRelatedUserPrepositionNor__c
            FROM ObjectTimelineParent__mdt
            WHERE SObjectParent__c = 'Account' AND Object_Timeline_Child__r.SObjectName__c IN :types
        ];
    }
}