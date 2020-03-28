package new;

our $VERSION = '0.000001'; # 0.0.1

$VERSION = eval $VERSION;

use strict;
use warnings;

sub import {
  my ($me, $class, @args) = @_;
  return unless $class;
  my $targ = caller;
  require join('/', split '::', $class).'.pm';
  my $obj = $class->new(@args);
  no strict 'refs';
  ${"${targ}::O"} = $obj;
}

1;

=head1 NAME

new - Description goes here

=head1 SYNOPSIS

=head1 DESCRIPTION

=head1 AUTHOR

 mst - Matt S. Trout (cpan:MSTROUT) <mst@shadowcat.co.uk>

=head1 CONTRIBUTORS

None yet - maybe this software is perfect! (ahahahahahahahahaha)

=head1 COPYRIGHT

Copyright (c) 2020 the new L</AUTHOR> and L</CONTRIBUTORS>
as listed above.

=head1 LICENSE

This library is free software and may be distributed under the same terms
as perl itself.
