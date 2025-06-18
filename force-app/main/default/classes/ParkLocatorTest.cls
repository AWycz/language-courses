@isTest
private class ParkLocatorTest {
    @isTest
    static void testCallout(){
        // This causes a fake response to be generated
        Test.setMock(WebServiceMock.class, new ParkServiceMock());
        
        // Call the method that invokes a callout
        String country = 'USA';
        String[] parks = ParkLocator.country(country);
        
        // Verify that the mocked response is returned
        System.assertEquals(3, parks.size());
        System.assertEquals('Yellowstone', parks[0]);
        System.assertEquals('Yosemite', parks[1]);
        System.assertEquals('Grand Canyon', parks[2]);
    }

}