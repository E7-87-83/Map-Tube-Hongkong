use 5.030000;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
use File::ShareDir::Install;

install_share dist => 'share';

my $github = "https://github.com/E7-87-83/Map-Tube-Hongkong";

WriteMakefile(
    NAME              => 'Map::Tube::Hongkong',
    VERSION_FROM      => 'lib/Map/Tube/Hongkong.pm', 
    PREREQ_PM         => {
        'utf8'        => 0,
        'File::Share' => '0.25',
        'Map::Tube'   => '3.66', 
    },
    ABSTRACT_FROM     => 'lib/Map/Tube/Hongkong.pm', 
    AUTHOR            => 'FUNG Cheok Yin <fungcheokyin@gmail.com>',
    LICENSE           => 'perl',
    'META_MERGE' => {
            resources => {
                    repository => {
                            type => 'git',
                            url  => "$github.git",
                            web  => $github,
                            },
                    bugtracker => {
                            web    => "$github/issues",
                            },
                    homepage => $github,
                    },
            },

);

package MY;
use File::ShareDir::Install 'postamble';
