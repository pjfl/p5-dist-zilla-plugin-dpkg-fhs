requires "Dist::Zilla::Plugin::Dpkg" => "0.05";
requires "Module::Metadata" => "1.000024";
requires "Moose" => "2.1213";
requires "Pod::Simple" => "3.28";
requires "Software::License" => "0.103010";
requires "Text::Format" => "0.59";
requires "namespace::autoclean" => "0.22";
requires "perl" => "5.010001";

on 'build' => sub {
  requires "Module::Build" => "0.4004";
  requires "Test::Requires" => "0.06";
  requires "version" => "0.88";
};

on 'configure' => sub {
  requires "Module::Build" => "0.4004";
  requires "version" => "0.88";
};
