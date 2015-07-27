requires "Dist::Zilla::Plugin::Dpkg" => "0.05";
requires "Module::Metadata" => "1.000027";
requires "Moose" => "2.1405";
requires "Pod::Simple" => "3.30";
requires "Software::License" => "0.103010";
requires "Text::Format" => "0.59";
requires "namespace::autoclean" => "0.26";
requires "perl" => "5.010001";

on 'build' => sub {
  requires "Module::Build" => "0.4004";
  requires "Test::Requires" => "0.06";
  requires "version" => "0.88";
};

on 'test' => sub {
  requires "File::Spec" => "0";
  requires "Module::Metadata" => "1.000027";
  requires "Sys::Hostname" => "0";
};

on 'test' => sub {
  recommends "CPAN::Meta" => "2.120900";
};

on 'configure' => sub {
  requires "Module::Build" => "0.4004";
  requires "version" => "0.88";
};
