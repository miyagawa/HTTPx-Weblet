use strict;
use warnings;
use Test::More tests => 1;
use HTTPx::Weblet::Request::Upload;

my $upload = HTTPx::Weblet::Request::Upload->new(
    filename => '/tmp/foo/bar/hoge.txt',
);
is $upload->basename, 'hoge.txt';
