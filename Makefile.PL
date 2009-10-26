use inc::Module::Install;
name 'Plack-Request';
all_from 'lib/Plack/Request.pm';
readme_from 'lib/Plack/Request.pm';
requires 'CGI::Simple::Cookie';
requires 'LWP';
requires 'URI::QueryParam';
requires 'HTTP::Body', 1.05;
requires 'Class::Accessor::Fast';
requires 'CGI::Simple::Cookie';

recommends 'HTTP::Message::PSGI';

build_requires 'Test::More';
use_test_base;
tests 't/*.t t/*/*.t';
auto_include_deps;
author_tests('xt');
auto_set_repository;
WriteAll;
