@isTest
private class AnimalLocatorTest {
    @isTest
    private static void getAnimalNameByIdTest(){
        // Create the mock response
        AnimalLocatorMock mock = new AnimalLocatorMock();
        // Associate the callout with a mock response
        Test.setMock(HttpCalloutMock.class, mock);
        
        // Call method to test
        String animalName = AnimalLocator.getAnimalNameById(2137);
        
        // Verify that the response received contains fake values
        System.assertEquals('chicken', animalName, 'The animal name should be "chicken".');
    }
}