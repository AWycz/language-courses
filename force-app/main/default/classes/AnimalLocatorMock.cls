@isTest
global class AnimalLocatorMock implements HttpCalloutMock {
    global HttpResponse respond(HTTPRequest request) {
        // Create a fake response
        HttpResponse response = new HttpResponse();
        response.setHeader('Content-Type', 'application/json');
        String endpoint = request.getEndpoint();
        Integer animalId = Integer.valueOf(endpoint.substringAfterLast('/'));
        response.setBody('{"animal":{"id":1,"name":"chicken","eats":"chicken food","says":"cluck cluck"}}');
        response.setStatusCode(200);
        return response;
    }
}