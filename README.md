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


   