package HTTPx::Weblet;
use strict;
use 5.008001;
our $VERSION = "0.1000";

__END__

=head1 NAME

HTTPx::Weblet - HTTP::Engine-like request and response objects for PSGI

=head1 DESCRIPTION

HTTPx::Weblet is a toolkit that contains L<HTTP::Engine>-like Request
and Response for PSGI web applications. This is an I<old>
implementation of how L<Plack::Request> was written, based on
L<HTTP::Engine::Request> and L<HTTP::Engine::Response>.

New middleware authors and web application framework authors are
recommended to take a look and upgrade to the latest L<Plack::Request>.

=head1 AUTHORS

Kazuhiro Osawa

Tokuhiro Matsuno

Tatsuhiko Miyagawa

=head1 LICENSE

This software is licensed under the same terms as Perl.

=head1 SEE ALSO

L<Plack::Request> L<HTTP::Engine>

=cut

