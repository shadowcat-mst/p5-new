use strict;
use warnings;
use lib 't/lib';
use Test::More;
use new;

our ($O);

new->import('ExampleClass');

is ref($O), 'ExampleClass', 'object exists';

is $O->foo, 'foo', 'method works';

is $O->bar, 'bar', 'method works';

new->import('ExampleClass', bars => 3);

is $O->bar, 'bar bar bar', 'method w/constructor args works';

done_testing;
