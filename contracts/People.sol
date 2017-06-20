contract People {

  Person[] public people;

  struct Person {
    bytes32 firstName;
    bytes32 lastName;
    uint age;
  }

  function addPerson(bytes32 _firstName, bytes32 _lastName, uint _age) returns (bool success) {

    Person memory newPerson;
    newPerson.firstName = _firstName;
    newPerson.lastName = _lastName;
    newPerson.age = _age;

    people.push(newPerson);
    return true;
  }

  function getPeople() constant returns (bytes32[], bytes32[], uint[]) {

    bytes32[] firstNames;
    bytes32[] lastNames;
    uint[] ages;

    for (uint i = 0; i < people.length; i++){
      Person memory currentPerson; //wtf does memory do? call stack?
      currentPerson = people[i]
      firstNames.push(currentPerson.firstName)
      lastNames.push(currentPerson.lastNames)
      ages.push(currentPerson.ages)
    }

    return(firstNames, lastNames, ages);
  }
}
