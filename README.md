TBX Validation API
=================================

Welcome to the TBX Validation API! This is a simple RESTful API which provides the links 
to schemas and definitions for a dialect or specific module.

Routes
------

The following routes are available:

  * /                               [GET]       -This is the index page, provides a list of routes.
  
  * /dialects/{dialect_name}        [GET]       -This will return information for the dialect {dialect_name}
                                                with links to its definition and schemas (JSON format). 
                                                {dialect_name} is case sensitive and expects the canonical name
                                                of the dialect as it is shown on TBXinfo. Therefore, "TBX-Min" 
                                                will be accepted, but "tbx-min" will not.
    
  * /dialects                       [GET]       -This gives the list of dialects with links to their 
                                                definition and schemas (JSON format).

  * /modules/{module_name}          [GET]       -This will return information for the module {module_name} with 
                                                links to its definition and schemas (JSON format). 
                                                {module_name} is case sensitive and expects the canonical name
                                                of the dialect as it is shown on TBXinfo.  Therefore, "Min"
                                                will be accepted, but "min" will not.

Installation
------------

Update submodules:

```
$ git submodule init
$ git submodule update
```

Create an SQL database (The default name is 'tbx_validation_api').  Import the SQL file in "src/AppBundle/Resources/data/tbx_validation_api.sql".

Clone this repository into the appropriate directory on your webserver.

Download Composer:
```
$ curl -sS https://getcomposer.org/installer | php -- --filename="composer"
```

Install Symfony:
```
$ php composer install
```

When prompted, provide the database credentials.


Clear the cache:
```
$ php app/console cache:clear --env=prod
```
