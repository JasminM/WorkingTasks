# WorkingTasks

## Thema

Als Projekt wurde eine firmenweite Aufgabenverteilung gewählt.
Es sollte möglich sein, Aufgaben anzulegen, die direkt zu Mitarbeitern, Kunden und Themenbereichen zugeordnet werden können.

## Modelle

### angelegte Modelle
* Customer(name address email)
* Department(name room head)
* Employee(position firstname lastname department)
* Subject_area(name definition)
* Task(title content priority status begin end customer subject_area)

###Beziehungen
* Employee(n)   "<belongs_to>" (1) Department
* Task(n)       "<belongs_to>" (1) Customer
* Task(n)       "<belongs_to>" (1) Subject_area
* Employee(n)   "<has_and_belongs_to_many>" (m)Tasks

### Validations
* Customer:name--> validates_presence_of
* Department :name, :head --> validates_presence_of
* Employee:firstname, :lastname, :department --> validates_presence_of
* Subject_area:name --> validates_presence_of & validates_uniqueness_of
* Task:title, :customer, :subject_area --> validates_presence_of & validates_uniqueness_of (title)

## Tests

* 49 Tests, 81 Assertions,
* ModelTests: 3
* Integrationstests: 1

## Code Abdeckung

 Coverage: 98,99% laut simplecov

## Commits

## Gems und Sonstiges

* Framework: Bootstrap
* Gem: 'twitter-bootstrap-rails' --> zum einbinden von bootstrap