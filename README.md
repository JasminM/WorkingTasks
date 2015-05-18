# WorkingTasks

## Thema

Als Projekt wurde eine firmenweite Aufgabenverteilung gew�hlt.
Es sollte m�glich sein, Aufgaben anzulegen, die direkt zu Mitarbeitern, Kunden und Themenbereichen zugeordnet werden k�nnen.

## Modelle

### angelegte Modelle
* Customer(name address email)
* Department(name room head)
* Employee(position firstname lastname department)
* Subject_area(name definition)
* Task(title content priority status begin end customer subject_area)

###Beziehungen
* Employee(n)   <belongs_to> (1) Department
* Task(n)       <belongs_to> (1) Customer
* Task(n)       <belongs_to> (1) Subject_area
* Employee(n)   <has_and_belongs_to_many> (m)Tasks

### Validations
* Customer:name--> validates_presence_of
* Department :name, :head --> validates_presence_of
* Employee:firstname, :lastname --> validates_presence_of
* Subject_area:name --> validates_presence_of & validates_uniqueness_of
* Task:title --> validates_presence_of & validates_uniqueness_of

## Tests

* 42 Tests, 70 Assertions,
* ModelTests: 3
* Integrationstests:

## Code Abdeckung

 Coverage: 96,96% laut simplecov

## Commits

## Gems und Sonstiges

* Framework: Bootstrap
* Gem: 'twitter-bootstrap-rails' --> zum einbinden von bootstrap