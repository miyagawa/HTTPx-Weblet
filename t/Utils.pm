package t::Utils;
use strict;
use warnings;
use Piglet::Request;

use base qw/Exporter/;

our @EXPORT = qw/ req /;

sub req {
    my %args = @_;

    open my $in, '<', \do { my $d };
    my $env = {
        'psgi.version'    => [ 1, 0 ],
        'psgi.input'      => $in,
        'psgi.errors'     => *STDERR,
        'psgi.url_scheme' => 'http',
        SERVER_PORT       => 80,
        %args
    };
    Piglet::Request->new($env);
}

1;
