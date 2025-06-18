@RestResource(urlMapping='/Accounts/*/contacts')
global with sharing class AccountManager {
    @HttpGet
    global static Account getAccount(){
        RestRequest request = RestContext.request;
        // grab the accountId from the end of the URL
        String[] parts = request.requestURI.split('/');
        String accountId = parts[parts.size() - 2];
        Account result = [SELECT Id, Name, (SELECT Id, Name FROM Contacts)
                          FROM Account
                          WHERE Id = :accountId LIMIT 1];
        return result;

    }
}