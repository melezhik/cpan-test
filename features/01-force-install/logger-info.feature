Feature: cpan_client should be able to do install in force mode

Scenario: installing cpan module in force mode will give proper output
    * I run 'pm-uninstall -nf Bundler'
    * it should exit '0'
    * I run 'perl -MBundler -e 1'
    * it should exit '2'
    * 'stderr' should have 'Can't locate Bundler\.pm'
    Given I have chef recipe:
    """
    cpan_client 'Bundler' do
        install_type 'cpan_module'
        user 'root'
        group 'root'
        force true
        action 'install'
    end
    """
    When I run chef recipe on my node
    Then 'stdout' should have 'force_mode: true'
    And I run 'perl -MBundler -e 1'
    Then it should exit '0'

