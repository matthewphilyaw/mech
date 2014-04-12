Feature: Core system
    The core should expose a mechs electrical and mechanical features to software
    The core should provide a standard interface 
    The core should be extensible via modules

    Scenario: Core functions that mech does not support
        Given A core system with a complete standard interface
        And A Mech that uses a core system
        When Core a function is not supported by mech
        Then A core function should report not supported

    Scenario: Core should list supported functions
        Given a core system with a complete standard interface
        And A Mech that uses a core system
        When The core system is asked to list supported functions
        Then The core system should only report functions that the mech supports
