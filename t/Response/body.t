use strict;
use warnings;
use FindBin;
use Test::More;
use HTTPx::Weblet::Response;
use URI;

sub r($) {
    my $res = HTTPx::Weblet::Response->new(200);
    $res->body(@_);
    return $res->finalize->[2];
}

is_deeply r "Hello World", [ "Hello World" ];
is_deeply r [ "Hello", "World" ], [ "Hello", "World" ];

{
    open my $fh, "$FindBin::Bin/body.t";
    is_deeply r $fh, $fh;
}

{
    my $foo = "bar";
    open my $io, "<", \$foo;
    is_deeply r $io, $io;
}

{
    my $uri = URI->new("foo"); # stringified object
    is_deeply r $uri, [ $uri ];
}

done_testing;

