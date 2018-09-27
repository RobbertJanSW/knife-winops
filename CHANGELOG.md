# knife-winops Change Log

## Release 1.9.0

* [knife-winops #416](https://github.com/chef/knife-winops/pull/416) Add concurrency support via the `--concurrency` flag

## Release 1.8.0

* [knife-winops #407](https://github.com/chef/knife-winops/pull/407) Added value for config_log_level and config_log_location

## Release 1.7.1

* [knife-winops #409](https://github.com/chef/knife-winops/pull/409) Fix trusted_cert copy script generation on windows

## Release 1.7.0

* [knife-winops #400](https://github.com/chef/knife-winops/pull/400) Allow a custom codepage to be specified and passed to the cmd shell

## Release 1.6.0

* [knife-winops #393](https://github.com/chef/knife-winops/pull/393) Add documentation of the --msi-url option
* [knife-winops #392](https://github.com/chef/knife-winops/pull/392) Use winrm v2 and allow users to pass a shell
* [knife-winops #388](https://github.com/chef/knife-winops/pull/388) fix #386 swallowing node_ssl_verify_mode value
* [knife-winops #385](https://github.com/chef/knife-winops/pull/385) Fixed win 2008 64bit ssh bootstrap command hanging
* [knife-winops #384](https://github.com/chef/knife-winops/pull/384) Fix for architechture detection issue for 64 bit
* [knife-winops #381](https://github.com/chef/knife-winops/pull/381) Add validation for FQDN value
* [knife-winops #380](https://github.com/chef/knife-winops/pull/380) Fixing bootstrap via ssh regression

## Release 1.5.0

* [knife-winops #377](https://github.com/chef/knife-winops/pull/377) Added code and corresponding RSpecs to read the json attributes from the --json-attributes-file option.

## Release 1.4.1

* [knife-winops #362](https://github.com/chef/knife-winops/pull/362) Fix `knife windows bootstrap` chef client downloads over a proxy
* [knife-winops #367](https://github.com/chef/knife-winops/pull/367) Honor chef's ssl_policy when making winrm calls

## Release 1.4.0

* [knife-winops #354](https://github.com/chef/knife-winops/pull/354) Allows the user to specify the architecture they want to install on the target system during `knife bootstrap windows`.  In your knife config specify `knife[:bootstrap_architecture]`.  Valid values are `:i386` for 32 bit or `:x86_64` for 64 bit.  By default the architecture will be whatever the target system is.  If you try to install a 64 bit package on a 32 bit system you will receive an error.
* [knife-winops #352](https://github.com/chef/knife-winops/pull/352) Have client.rb verify that FIPS mode can be enforced

## Release 1.3.0
* [knife-winops #349](https://github.com/chef/knife-winops/pull/349) Pulls in Winrm 1.7.0 which now consumes rubyntlm 0.6.0 to support Extended Protection for Authentication (aka channel binding) for NTLM over TLS
* [knife-winops #350](https://github.com/chef/knife-winops/pull/350) Adding a `--ssl-peer-fingerprint` option as an alternative to `--winrm-ssl-verify-mode verify_none` in self signed scenarios

## Release 1.2.1
* [knife-winops #341](https://github.com/chef/knife-winops/pull/341) Removes nokogiri dependency and adds UX fixes for `knife wsman test` when probing a SSL endpoint configured with a self signed certificate

## Release 1.2.0
* [knife-winops #334](https://github.com/chef/knife-winops/pull/334) Uses Negotiate authentication via winrm 1.6 on both windows and linux and drops winrm-s dependency

## Release 1.1.4
* Bumps winrm-s and winrm dependencies to address a winrm-s incompatibility bug with winrm 1.5

## Release 1.1.3
* [knife-winops #329](https://github.com/chef/knife-winops/pull/329) Pin to a minimum winrm-s of 0.3.2 addressing encoding issues in 0.3.1

## Release 1.1.2
* [knife-winops #317](https://github.com/chef/knife-winops/pull/317) Update Vault after client is created
* [knife-winops #325](https://github.com/chef/knife-winops/pull/325) Fix proxy configuration to work with chef client 12.6.0
* [knife-winops #326](https://github.com/chef/knife-winops/pull/326) Support new `ssh_identity_file` bootstrap argument

## Release 1.1.1
* [knife-winops #307](https://github.com/chef/knife-winops/pull/307) Ensure prompted password is passed to winrm session
* [knife-winops #311](https://github.com/chef/knife-winops/issues/311) WinRM bootstrap silently fails

## Release 1.1.0
* [knife-winops #302](https://github.com/chef/knife-winops/pull/302) Address regression caused by chef client 12.5 environment argument
* [knife-winops #295](https://github.com/chef/knife-winops/issues/295) Bootstrap missing policy_group, policy_name feature from Chef Client 12.5
* [knife-winops #296](https://github.com/chef/knife-winops/issues/296) Installing knife-winops produces warning for _all_ knife commands in Mac OS X with ChefDK 0.8.0
* [knife-winops #297](https://github.com/chef/knife-winops/pull/297) use configured proxy settings for all winrm sessions

## Release 1.0.0

* [knife-winops #281](https://github.com/chef/knife-winops/pull/281) Prevent unencrypted negotiate auth, automatically prefix local usernames with '.' for negotiate
* [knife-winops #275](https://github.com/chef/knife-winops/pull/275) Added bootstrap\_install\_command option in parity with knife bootstrap
* [knife-winops #240](https://github.com/chef/knife-winops/pull/240) Change kerberos keytab short option to -T to resolve conflict
* [knife-winops #232](https://github.com/chef/knife-winops/pull/232) Adding --hint option to bootstrap
* [knife-winops #227](https://github.com/chef/knife-winops/issues/227) Exception: NoMethodError: undefined method 'gsub' for false:FalseClass
* [knife-winops #222](https://github.com/chef/knife-winops/issues/222) Validatorless bootstrap support
* [knife-winops #202](https://github.com/chef/knife-winops/issues/202) knife bootstrap windows should support enabling the service
* [knife-winops #213](https://github.com/chef/knife-winops/pull/213) Search possibilities of HOME for bootstrap templates
* [knife-winops #206](https://github.com/chef/knife-winops/pull/206) Add a flag msi_url that allows one to fetch the Chef client msi from a non-chef.io path
* [knife-winops #192](https://github.com/chef/knife-winops/issues/192) deprecate knife bootstrap --distro
* [knife-winops #159](https://github.com/opscode/knife-winops/issues/159) `winrm_port` option should default to 5986 if `winrm_transport` option is `ssl`
* [knife-winops #149](https://github.com/chef/knife-winops/pull/149) Adding knife wsman test to validate WSMAN/WinRM availability
* [knife-winops #139](https://github.com/opscode/knife-winops/issues/139) Force dev dependency on Chef 11 for test scenarios to avoid Ohai 8 conflict on Ruby 1.9.x
* [knife-winops #126](https://github.com/opscode/knife-winops/pull/126) Allow disabling of SSL peer verification in knife-winops for testing
* [knife-winops #154](https://github.com/opscode/knife-winops/issues/154) Unreleased regression in master: NameError: undefined local variable or method `path_separator
* [knife-winops #143](https://github.com/opscode/knife-winops/issues/143) Unreleased regression in master: WinRM::WinRMHTTPTransportError: Bad HTTP response returned from server (503) in the middle of bootstrap
* [knife-winops #133](https://github.com/opscode/knife-winops/issues/133) Bootstrap failure -- unable to validate SSL chef server endpoints
* [knife-winops #132](https://github.com/opscode/knife-winops/issues/132) New subcommands for WinRM: windows listener create, cert generate, and cert install
* [knife-winops #129](https://github.com/opscode/knife-winops/issues/129) New --winrm-authentication-protocol option for explicit control of authentication
* [knife-winops #125](https://github.com/opscode/knife-winops/issues/125) knife-winops should use PowerShell first before cscript to download the  Chef Client msi
* [knife-winops #92](https://github.com/opscode/knife-winops/issues/92) EventMachine issue: knife bootstrap windows winrm error
* [knife-winops #94](https://github.com/opscode/knife-winops/issues/94) Remove Eventmachine dependency
* [knife-winops #252](https://github.com/chef/knife-winops/pull/252) Fail early on ECONNREFUSED, Closes #244.
* [knife-winops #260](https://github.com/chef/knife-winops/pull/260) Fail quickly on invalid option combinations, Closes #259

## Release: 0.8.5
* [knife-winops #228](https://github.com/chef/knife-winops/pull/228) make winrm-s dep more strict on knife-winops 0.8.x

## Release: 0.8.4
* [knife-winops #133](https://github.com/opscode/knife-winops/issues/133) Bootstrap failure -- unable to validate SSL chef server endpoints

## Release: 0.8.3
* [knife-winops #131](https://github.com/opscode/knife-winops/issues/108) Issue #131: Windows should be bootstrapped using latest Chef Client version compatible with knife's version just like non-Windows systems
* [knife-winops #139](https://github.com/opscode/knife-winops/issues/139) Force dev dependency on Chef 11 for test scenarios to avoid Ohai 8 conflict on Ruby 1.9.x

## Release: 0.8.2
* [knife-winops #108](https://github.com/opscode/knife-winops/issues/108) Error: Unencrypted communication not supported if remote server does not require encryption

## Release: 0.8.0
* [knife-winops #98](https://github.com/opscode/knife-winops/issues/98) Get winrm command exit code if it is not expected
* [knife-winops #96](https://github.com/opscode/knife-winops/issues/96) Fix break from OS patch KB2918614
* Remove the 'instance data' method of creating EC2 servers
* Update winrm-s dependency along with em-winrm and winrm dependencies
* Return failure codes from knife winrm even when `returns` is not set
* Support Windows negotiate authentication protocol when running knife on Windows

## Release: 0.6.0 (05/08/2014)

* [KNIFE-386](https://tickets.opscode.com/browse/KNIFE-386) Wait for a valid command response before bootstrapping over WinRM
* [KNIFE-394](https://tickets.opscode.com/browse/KNIFE-394) Update em-winrm dependency
* [KNIFE-450](https://tickets.opscode.com/browse/KNIFE-450) Set knife winrm command exit status on exception and command failure

**See source control commit history for earlier changes.**

## Selected release notes
These are release notes from very early releases of the plugin. For recent
releases (2014 and later), see the RELEASE_NOTES.md file of each tagged release branch.

Release Notes - Knife Windows Plugin - Version 0.5.6

** New Feature
    * new default bootstrap template that installs Chef using official chef-client MSI installer

Release Notes - Knife Windows Plugin - Version 0.5.4

** Bug
    * [KNIFE\_WINDOWS-7] - Exception: NoMethodError: undefined method `env_namespace' for Savon:Module
    * [KNIFE\_WINDOWS-8] - winrm based bootstrap fails with 'Bad HTTP response returned from server (500)'


** New Feature
    * [KNIFE\_WINDOWS-6] - default bootstrap template should support encrypted\_data\_bag\_secret
