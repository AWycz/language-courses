public with sharing class AnimalLocator {
    public static String getAnimalNameById(Integer animalId) {
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/' + animalId);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        AnimalWrapper wrapper = (AnimalWrapper) JSON.deserialize(response.getBody(), AnimalWrapper.class);
        System.debug('Received animal: ' + wrapper.animal.name);
        return wrapper.animal.name;
    }
}