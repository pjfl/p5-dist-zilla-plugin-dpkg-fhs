# Name

Dist::Zilla::Plugin::Dpkg::FHS - Create Debian packaging for the FHS specification

# Synopsis

    # In your dist.ini
    [Dpkg::FHS]
    install_cmd   = your-app-cli install
    uninstall_cmd = your-app-cli uninstall

    [ChangelogFromGit::Debian]
    file_name     = debian/changelog

    # Then install with
    dzil authordeps --missing | cpanm

# Description

Create Debian packaging for the FHS specification. The install prefix can be
set from `dist.ini`

Like [Dist::Zilla::Plugin::Dpkg::Perlbrew::Starman](https://metacpan.org/pod/Dist::Zilla::Plugin::Dpkg::Perlbrew::Starman) but better generalised

# Configuration and Environment

Defines the following attributes;

- `apache_modules`

    A space separated list of Apache modules to enable

- `bindir`

    The directory where the install and uninstall commands are found. Defaults
    to `${PREFIX}/${PACKAGE}/${VERDIR}/bin`. The shell variables are evaluated
    at run time

- `debian_version`

    The Debian version included in the archive file name. Defaults to
    `<short_version>-<phase>`

- `dh_format_spec`

    URI of specification for the Debian copyright file

- `executable_files`

    A space separated list of file to make executable. Defaults to;
    `debian/postinst`, `debian/postrm`, and `debian/rules`

- `install_cmd`

    A required string. The command used to complete the installation after the
    file have been unpacked

- `install_prefix`

    The path under which the application will be installed. Defaults to `/opt`
    as perl my loose interpretation of the FHS specification

- `license_keys`

    The hash reference is used to translate Perl license names (meta specification
    2) into [Software::License](https://metacpan.org/pod/Software::License) subclass names

- `module_abstract`

    The one line description of the application scraped from the main module POD

- `module_description`

    Description taken from the main module POD

- `module_metadata`

    An instance of [Module::Metadata](https://metacpan.org/pod/Module::Metadata)

- `permalink`

    The base of the URI to the application home page. Defaults to
    `https:://metacpan.org/release`

- `phase`

    An integer which default to 1. Appended to the short version number to create
    an installation directory name that allows for multiple instances of the same
    or different versions

- `short_version`

    Just the major and minor version numbers not the subversion

- `verdir`

    The version directory. Defaults to `v<short_version>p<phase>`

- `web_server`

    An enumerated list. One of; `all`, `apache`, `native`, `nginx`, or `none`.
    Determines which webserver(s) if any will be started when the machine boots

- `uninstall_cmd`

    A required string. The command used to uninstall the application

# Subroutines/Methods

## `add_debian_copyright`

Inject a Debian copyright file into the current build

## `add_docs`

Add the `README` file to the Debian documentation

## `enhance`

Adds more attributes to the stash which is passed to the templating subroutine
when files are generated

## `fix_changelog`

Replace the default author and author email strings with something more
useful

## `maybe_set_execute_permission`

Checks if the last file in the list of [zilla](https://metacpan.org/pod/Dist::Zilla#files) files is in
the ["executable\_files"](#executable_files) list, sets the file's execute permission

# Diagnostics

None

# Dependencies

- [Dist::Zilla::Plugin::Dpkg](https://metacpan.org/pod/Dist::Zilla::Plugin::Dpkg)
- [Module::Load](https://metacpan.org/pod/Module::Load)
- [Module::Metadata](https://metacpan.org/pod/Module::Metadata)
- [Moose](https://metacpan.org/pod/Moose)
- [Pod::Simple](https://metacpan.org/pod/Pod::Simple)
- [Software::License](https://metacpan.org/pod/Software::License)
- [Text::Format](https://metacpan.org/pod/Text::Format)

# Incompatibilities

There are no known incompatibilities in this module

# Bugs and Limitations

There are no known bugs in this module. Please report problems to
http://rt.cpan.org/NoAuth/Bugs.html?Dist=Dist-Zilla-Plugin-Dpkg-FHS.
Patches are welcome

# Acknowledgements

Larry Wall - For the Perl programming language

# Author

Peter Flanigan, `<pjfl@cpan.org>`

# License and Copyright

Copyright (c) 2016 Peter Flanigan. All rights reserved

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself. See [perlartistic](https://metacpan.org/pod/perlartistic)

This program is distributed in the hope that it will be useful,
but WITHOUT WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE
