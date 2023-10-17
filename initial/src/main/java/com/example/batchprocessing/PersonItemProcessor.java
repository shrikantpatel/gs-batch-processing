package com.example.batchprocessing;

import org.springframework.batch.item.ItemProcessor;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class PersonItemProcessor implements ItemProcessor<Person, Person> {

    private static final Logger log = LoggerFactory.getLogger(PersonItemProcessor.class);


    @Override
    public Person process(final Person person) throws Exception {

        final String firstname = person.getFirstName().toUpperCase();
        final String lastname = person.getLastName().toUpperCase();
        final Person transformedPerson = new Person(firstname, lastname);

        log.info("Transforming Existing obj - {} to Transformed Obj- {}", person, transformedPerson);

        return transformedPerson;
    }
}
