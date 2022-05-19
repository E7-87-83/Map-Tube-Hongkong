package Map::Tube::Hongkong;
use utf8;
use strict;
use warnings;

our $VERSION = '0.04.1';

# ABSTRACT: Map::Tube::Hongkong - Interface to the Hong Kong MTR map

use File::Share ':all';

use Moo;
use namespace::clean;

has xml => (is => 'ro', default => sub { return dist_file('Map-Tube-Hongkong', 'hongkong-map.xml') });
with 'Map::Tube';


1;

__END__
=encoding UTF-8

=head1 NAME

Map::Tube::Hongkong - Interface to the Hong Kong MTR map.

=head1 VERSION

version 0.04.1

=head1 DESCRIPTION

It currently provides functionality to find the shortest route between the two given stations.

=head1 CONSTRUCTOR

    use Map::Tube::Hongkong;
    my $tube = Map::Tube::Hongkong->new;

=head1 METHODS

=head2 get_shortest_route(I<START>, I<END>)

This method expects two parameters I<START> and I<END> station name.
Station names are case insensitive. The station sequence from I<START>
to I<END> is returned.

    use Map::Tube::Hongkong;
    my $tube = Map::Tube::Hongkong->new;
    my $route = $tube->get_shortest_route('Yau Ma Tei', 'Mei Foo');
    print "Route: $route\n";

=head1 BUGS/TODOS

Provide support for station names in Chinese.

Maybe something look like:

    my $route = $tube->get_shortest_route('油麻地', '美孚')->name_alt;


=head1 SEE ALSO

L<Map::Tube>.

=head1 REPOSITORY

L<https://github.com/E7-87-83/Map-Tube-Hongkong>

=head1 AUTHOR

FUNG Cheok Yin <fungcheokyin@gmail.com>

=head1 CONTRIBUTORS

Mohammad S Anwar <mohammad.anwar@yahoo.com>

FUNG Cheok Yin <fungcheokyin@gmail.com>

=head1 COPYRIGHT AND LICENSE

This is free software, licensed under:
  The Artistic License 2.0 (GPL Compatible)

=cut
