use strict;
use Test::Requires qw(HTTP::Message::PSGI);
use Test::More;
use HTTPx::Weblet::Request;
use HTTP::Request::Common;

my $raw_uri;

my $app = sub {
    my $req = HTTPx::Weblet::Request->new(shift);
    $raw_uri = $req->raw_uri;
};

$app->(req_to_psgi(GET "http://localhost/foo%20bar"));
is $raw_uri, 'http://localhost/foo%20bar';

$app->(req_to_psgi(GET "http://localhost:2020/FOO/bar,baz"));
is $raw_uri, 'http://localhost:2020/FOO/bar,baz';

done_testing;
