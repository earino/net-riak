package Net::Riak::Link;

# ABSTRACT: the riaklink object represents a link from one Riak object to another

use Moose;

with 'Net::Riak::Role::Base' => {classes =>
      [{name => 'client', required => 0}, {name => 'bucket', required => 1},]};

has key => (
    is      => 'rw',
    isa     => 'Str',
    lazy    => 1,
    default => '_',
);
has tag => (
    is      => 'rw',
    isa     => 'Str',
    lazy    => 1,
    default => sub {(shift)->bucket->name}
);

1;
