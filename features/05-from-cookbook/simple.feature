Feature: cpan_client should be able to install cpan module from cookbook

Scenario: install cpan module
    * I run 'pm-uninstall -nf Bundler'
    * it should exit '0'
    * I run 'perl -MBundler -e 1'
    * it should exit '2'
    * 'stderr' should have 'Can't locate Bundler\.pm'
    Given I have chef recipe:
    """
    cpan_client 'Bundler-v0.0.30.tar.gz' do
        from_cookbook 'test'
        install_type 'cpan_module'
        user 'root'
        group 'root'
        action 'install'
    end
    """
    When I run chef recipe on my node
    And I run 'perl -MBundler -e 1'
    Then it should exit '0'

Scenario: try to install cpan module with unexisted distributive 
    * I run 'pm-uninstall -nf Bundler'
    * it should exit '0'
    * I run 'perl -MBundler -e 1'
    * it should exit '2'
    * 'stderr' should have 'Can't locate Bundler\.pm'
    Given I have chef recipe:
    """
    cpan_client 'Bundler-v0.0.29.tar.gz' do
        from_cookbook 'test'
        install_type 'cpan_module'
        user 'root'
        group 'root'
        action 'install'
    end
    """
    When I run chef recipe on my node
    Then 'stdout' should have 'does not contain a file at any of these locations'
    When I run 'perl -MBundler -e 1'
    Then it should exit '2'
    And 'stderr' should have 'Can't locate Bundler\.pm'

