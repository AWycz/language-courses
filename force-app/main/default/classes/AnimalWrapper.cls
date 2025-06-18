public with sharing class AnimalWrapper {
    public Animal animal;
    
    public class Animal {
        public Integer id;
        public String name;
        public String eats;
        public String says;
    }

    public static AnimalWrapper parse(String json) {
        return (AnimalWrapper) System.JSON.deserialize(json, AnimalWrapper.class);
    }
}