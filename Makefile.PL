use inc::Module::Install;
name 'HTTPx-Weblet';
all_from 'lib/HTTPx/Weblet.pm';
readme_from 'lib/HTTPx/Weblet.pm';
requires 'CGI::Simple::Cookie';
requires 'HTTP::Headers';
requires 'HTTP::Request';
requires 'URI::QueryParam';
requires 'HTTP::Body', 1.05;
requires 'Class::Accessor::Fast';
requires 'CGI::Simple::Cookie';

recommends 'HTTP::Message::PSGI';

build_requires 'Test::More';
test_requires 'Test::Requires';
test_requires 'Test::Exception';
use_test_base;
tests 't/*.t t/*/*.t';
auto_include_deps;
author_tests('xt');
auto_set_repository;
WriteAll;
