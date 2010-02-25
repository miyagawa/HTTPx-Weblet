use strict;
use warnings;
use Test::More;
use HTTPx::Weblet::Response;

{
    my $res = HTTPx::Weblet::Response->new;
    $res->redirect('http://www.google.com/');
    is $res->location, 'http://www.google.com/';
    is $res->code, 302;

    is_deeply $res->finalize, [ 302, [ 'Location' => 'http://www.google.com/' ], [] ];
}

{
    my $res = HTTPx::Weblet::Response->new;
    $res->redirect('http://www.google.com/', 301);
    is_deeply $res->finalize, [ 301, [ 'Location' => 'http://www.google.com/' ], [] ];
}

done_testing;
