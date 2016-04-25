package Person;
 
use strict;
use warnings;

sub new
{
    my $class = shift;

    my $self = {}; bless($self, $class);
    return $self;
}

sub varName
{
        my ($self, $name) = @_;
        if (defined($name)) {
                $self->{NAME} = $name;
        }
        return  $self->{NAME};
};

sub varAge
{
        my ($self, $age) = @_;
        if (defined($age)) {
                $self->{AGE} = $age;
        }
        return  $self->{AGE};
};

1; 
