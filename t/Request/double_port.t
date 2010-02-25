use Test::More;
use Test::Requires qw(Plack::Test);
use Plack::Test;
use HTTPx::Weblet::Request;
use HTTP::Request::Common;

$Plack::Test::Impl = 'Server';

my $app = sub {
    my $req = HTTPx::Weblet::Request->new(shift);
    return [200, [], [ $req->uri ]];
};

test_psgi app => $app, client => sub {
    my $cb = shift;
    my $res = $cb->(GET "http://localhost/foo");
    ok $res->content !~ /:\d+:\d+/;
};

done_testing;


