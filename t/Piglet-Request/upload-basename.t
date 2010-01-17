use strict;
use warnings;
use Test::More tests => 1;
use Piglet::Request::Upload;

my $upload = Piglet::Request::Upload->new(
    filename => '/tmp/foo/bar/hoge.txt',
);
is $upload->basename, 'hoge.txt';
