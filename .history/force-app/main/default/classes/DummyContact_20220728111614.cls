public with sharing class DummyContact {
    private static Contact createDummyContact(  ) {
        Contact contact = new Contact( );
        contact.FirstName = 'cokolwiek';
        contact.LastName = 'cokolwiek';
        contact.Email = 'piotr.lobejko@accenture.com';
        return contact;
 }
}
