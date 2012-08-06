NSUnit
======

NSUnit is a unit testing framework for Objective-C projects. NSUnit builds on top of SenTestingKit and provides a more Objective-C friendly API, particularly for testing against Foundation classes.

The Assert Class
----------------

The Assert class is the main test entry point to NSUnit. Tests are generall in the form:

     [Assert that:<subject> <verb>:<condition>]
   
Some examples:

     [Assert that:name isNot:[AnEmpty string]];
     [Assert that:name isNot:[Equal to:@"Omar"]];
     [Assert that:name is:[Equal to:"McNulty"]];


Verbs
-----

The following verbs are available:

__is__ - The condition evaluates to true.

__isNot__ - The condition evaluates to false.

__areAll__ - Each value in the provided collection evaluates to true.

Conditions
----------

The following conditions are available:

    Equal to: - The subject equals the provided value.
    
    Less than: - The subject is less than the provided value. Both values must be non-nil numbers.
    Less thanOrEqual: - The subject is less than or equal to the provided value. Both values must be non-nil numbers.
    
    Greater than: - The subject is greater than the provided value. Both values must be non-nil numbers.
    Greater thanOrEqual: - The subject is greater than or equal to the provided value. Both values must be non-nil numbers.
    
    Between low: and: - The subject is a number between the two provided values, inclusive. All values must be non-nil numbers.
    
    AnEmpty array: - The subject is an empty array.
    AnEmpty string: - The subject is an empty string.
    
