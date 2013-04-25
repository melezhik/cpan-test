Feature: cpan_client should be able to do install in force mode

Scenario: installing cpan module with failing tests, without force mode will fail
    * I run 'pm-uninstall -nf Test::Class'
    * it should exit '0'
    * I run 'perl -MTest::Class -e 1'
    * it should exit '2'
    Given I have chef recipe:
    """
    cpan_client 'Test::Class' do
        install_type 'cpan_module'
        user 'root'
        group 'root'
        force false
        action 'install'
    end
    """
    When I run chef recipe on my node
    And I run 'perl -MTest::Class -e 1'
    Then it should exit '2'

Scenario: installing cpan module with failing tests, with force mode will succeed
    * I run 'pm-uninstall -nf Test::Class'
    * it should exit '0'
    * I run 'perl -MTest::Class -e 1'
    * it should exit '2'
    Given I have chef recipe:
    """
    cpan_client 'Test::Class' do
        install_type 'cpan_module'
        user 'root'
        group 'root'
        force true
        action 'install'
    end
    """
    When I run chef recipe on my node
    And I run 'perl -MTest::Class -e 1'
    Then it should exit '0'


