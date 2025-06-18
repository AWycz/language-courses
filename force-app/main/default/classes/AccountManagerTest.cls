@isTest
private class AccountManagerTest {
    @isTest
    static void testGetAccountById() {
        Id recordId = createTestRecord();
        // Set up a test request
        RestRequest request = new RestRequest();
        request.requestUri =
            'https://yourInstance.my.salesforce.com/services/apexrest/Accounts/'
            + recordId+ '/contacts';
        request.httpMethod = 'GET';
        RestContext.request = request;
        // Call the method to test
        Account thisAccount = AccountManager.getAccount();
        // Verify results
        Assert.isTrue(thisAccount != null);
        Assert.areEqual('Test record', thisAccount.Name);
        Assert.isTrue(thisAccount.Contacts.size() > 0);
    }
    static Id createTestRecord() {
        // Create a test Account record
        Account testAccount = new Account(Name = 'Test record');
        insert testAccount;
        // Create a test Contact record associated with the Account
        Contact testContact = new Contact(
            FirstName = 'Test',
            LastName = 'Contact',
            AccountId = testAccount.Id);
        insert testContact;
        // Return the Id of the created record
        return testAccount.Id;
    }
}