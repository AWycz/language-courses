@isTest
global class ParkServiceMock implements WebServiceMock {
    global void doInvoke(
        Object stub,
        Object request,
        Map<String, Object> response,
        String endpoint,
        String soapAction,
        String requestName,
        String responseNS,
        String responseName,
        String responseType) {
        
        // Mocking a response for the park service
        ParkService.byCountryResponse parkResponse = new ParkService.byCountryResponse();
        // Setting the return value for the mocked response
        parkResponse.return_x = new String[]{'Yellowstone', 'Yosemite', 'Grand Canyon'};
        
        // Adding the mocked response to the response map
        response.put('response_x', parkResponse);
    }

}