Feature: Module system
    Modules will adhere to a stand interface
    Modules should work with any mechs core system
    The module system should provide the human interface to the mech

    Scenario: Module fail
        Given A module that uses certain core features
        And A mech with a core system
        When the core system does not support features the module needs
        Then the module should fail to load

    Scenario: Module load
        Given A module that uses certain core features
        And A mech with a core system
        When The core system supports the feautres the module needs
        Then The module should load

    Scenario: Module partial load
        Given a module that uses certain core features
        And A mech with a core system
        When The core supports a subset of the feautres needed by the module
        Then The module should load only exposing the features that are supported
