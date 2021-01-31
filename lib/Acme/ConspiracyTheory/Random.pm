use 5.012;
use strict;
use warnings;

package Acme::ConspiracyTheory::Random;

our $AUTHORITY = 'cpan:TOBYINK';
our $VERSION   = '0.001';

use Exporter::Shiny qw( theory );
use List::Util 1.54 ();

sub _RANDOM_ {
	my $code = List::Util::sample( 1, @_ );
	ref($code) eq 'CODE' ? goto($code) : $code;
}

sub _MERGE_ {
	my ( $orig_meta, %new ) = @_;
	%$orig_meta = ( %$orig_meta, %new );
}

sub celebrity {
	my $orig_meta = shift // {};
	my $celeb = _RANDOM_(
		{ female => 0, name => 'Bill Gates' },
		{ female => 0, name => 'Jeff Bezos' },
		{ female => 1, name => 'Hillary Clinton' },
		{ female => 0, name => 'Donald Trump' },
		{ female => 0, name => 'Barack Obama' },
		{ female => 0, name => 'Bernie Sanders' },
		{ female => 0, name => 'Joe Biden' },
		{ female => 0, name => 'Bill Clinton' },
		{ female => 1, name => 'Queen Elizabeth II' },
		{ female => 0, name => 'Johnny Depp' },
		{ female => 0, name => 'Q' },
		{ female => 1, name => 'Madonna' },
	);
	_MERGE_( $orig_meta, celebrity => $celeb );
	return $celeb->{name};
}

sub shady_group {
	my $orig_meta = shift // {};
	
	my $xx;
	PICK: {
		$xx = _RANDOM_(
			{ plural => 1, name => 'the Knights Templar', shortname => 'the Templars' },
			{ plural => 1, name => 'the Illuminati' },
			{ plural => 1, name => 'the Freemasons', shortname => 'the Masons' },
			{ plural => 0, name => 'the Ordo Templi Orientis' },
			{ plural => 1, name => 'the Cabalists' },
			{ plural => 1, name => 'the Followers of the Temple Of The Vampire', shortname => 'the Vampires' },
			{ plural => 0, name => 'the Secret Order of the Knights of the Round Table', shortname => 'the Knights' },
			{ plural => 1, name => 'the Cardinals of the Catholic Church', shortname => 'the Cardinals' },
			{ plural => 0, name => 'the Church of Satan', shortname => 'the Church' },
			{ plural => 1, name => 'the Gnostics' },
			{ plural => 1, name => 'the Elders of Zion', shortname => 'the Elders' },
			{ plural => 1, name => 'the Jesuits' },
			{ plural => 0, name => 'the Babylonian Brotherhood', shortname => 'the Brotherhood' },
			{ plural => 0, name => 'the Hermetic Order of the Golden Dawn', shortname => 'the Order' },
			{ plural => 0, name => 'Opus Dei' },
			{ plural => 0, name => 'the Priory of Sion', shortname => 'the Priory' },
			{ plural => 0, name => 'GameStop' },
			{ plural => 0, name => 'the British Royal Family', shortname => 'the Royals' },
			{ plural => 0, name => 'NASA' },
			{ plural => 1, name => 'the Zionists' },
			{ plural => 0, name => 'the Trump administration' },
			{ plural => 0, name => 'the Biden administration' },
			{ plural => 0, name => 'the Republican party', shortname => 'the Republicans' },
			{ plural => 0, name => 'the Democrat party', shortname => 'the Democrats' },
			{ plural => 0, name => 'the New World Order' },
			{ plural => 1, name => 'the Communists' },
			{ plural => 0, name => 'the Shadow Government' },
			{ plural => 0, name => 'the global financial elite' },
			{ plural => 0, name => 'the global scientific elite' },
			{ plural => 0, name => 'Big Pharma' },
			{ plural => 1, name => 'the lizard people', shortname => 'the lizardmen' },
			{ plural => 1, name => 'the grey aliens', shortname => 'the aliens' },
			{ plural => 1, name => 'the big Hollywood studios', shortname => 'Hollywood' },
			{ plural => 0, name => 'the music industry' },
			{ plural => 1, name => 'shape-shifting aliens', shortname => 'the shape-shifters' },
			{ plural => 1, name => 'Satanists' },
			{ plural => 1, name => 'pagans' },
			{ plural => 1, name => 'atheists' },
			{ plural => 1, name => 'people who like pineapple on pizza', shortname => 'the pineapple-lovers' },
			{ plural => 0, name => 'the deep state' },
			{ plural => 1, name => 'the descendents of Jesus', shortname => 'the descendents' },
			{ plural => 1, name => 'Qanon' },
			{ plural => 0, name => 'Microsoft' },
			{ plural => 0, name => 'Twitter' },
			{ plural => 0, name => 'Facebook' },
			{ plural => 0, name => 'Google' },
		);
		
		redo PICK
			if ( $orig_meta->{protagonists} and $orig_meta->{protagonists}{name} eq $xx->{name} )
			|| ( $orig_meta->{antagonists}  and $orig_meta->{antagonists}{name}  eq $xx->{name} );
	};
	
	_MERGE_( $orig_meta, shady_group => $xx );
	return $xx->{name};
}

sub real_animal {
	my $orig_meta = shift // {};
	
	my $animal = _RANDOM_(
		'cat',
		'dog',
		'horse',
		'penguin',
		'platypus',
		'toucan',
		'whale',
		'zebra',
	);
	
	_MERGE_( $orig_meta, real_animal => $animal );
	return $animal;
}

sub fake_animal {
	my $orig_meta = shift // {};
	
	my $animal = _RANDOM_(
		'unicorn',
		'bigfoot',
		'mermaid',
		'werewolf',
	);
	
	_MERGE_( $orig_meta, fake_animal => $animal );
	return $animal;
}

sub objects {
	my $orig_meta = shift // {};
	
	my $objects = _RANDOM_(
		'cars',
		'TVs',
		'smartphones',
		'microwave ovens',
		'trees',
		'clothes',
	);
	
	_MERGE_( $orig_meta, objects => $objects );
	return $objects;
}

sub disease {
	my $orig_meta = shift // {};
	
	my $disease = _RANDOM_(
		'cancer',
		'COVID-19',
		'HIV',
		'the common cold',
		'diabetes',
		'obesity',
	);
	
	_MERGE_( $orig_meta, disease => $disease );
	return $disease;
}

sub artifact {
	my $orig_meta = shift // {};
	
	my $artifact = _RANDOM_(
		'the holy grail',
		'the golden fleece',
		'Excalibur',
		'the ark of the covenant',
		"Jesus's foreskin",
	);
	
	_MERGE_( $orig_meta, artifact => $artifact );
	return $artifact;
}

sub bad_place {
	my $orig_meta = shift // {};
	
	my $bad_place = _RANDOM_(
		'a secret Antarctic base',
		'Area 51',
		'Langley, Virginia',
		'Guantanamo Bay Detention Camp',
		'Windsor Castle',
		'The Pentagon',
		'the basement of the Vatican',
		sub { myth_place( $orig_meta ) },
		sub {
			my $p = random_place( $orig_meta );
			"a series of tunnels underneath $p";
		},
		sub {
			my $p = random_place( $orig_meta );
			"a secret base in $p";
		},
	);
	
	_MERGE_( $orig_meta, bad_place => $bad_place );
	return $bad_place;
}

sub random_place {
	my $orig_meta = shift // {};
	
	my $random_place = _RANDOM_(
		'the USA',
		'the UK',
		'France',
		'Italy',
		'Germany',
		'Spain',
		'Egypt',
		'Israel',
		'Lebanon',
		'Syria',
		'Japan',
		'China',
		'Brazil',
		'Argentina',
		'Chile',
		'Tunisia',
		'Antarctica',
		'Norway',
		'Australia',
		'New Zealand',
	);
	
	_MERGE_( $orig_meta, random_place => $random_place );
	return $random_place;
}

sub myth_place {
	my $orig_meta = shift // {};
	
	my $place = _RANDOM_(
		'the Garden of Eden',
		'the lost city of Atlantis',
		'the final resting place of Noah\'s Ark',
		'the umbilicus mundi',
		'Camelot',
		"Lucifer's crypt",
		"Jesus's grave",
		"Jesus's true birthplace",
	);
	
	_MERGE_( $orig_meta, myth_place => $place );
	return $place;
}

sub cryptids {
	my $orig_meta = shift // {};
	
	my $cryptids = _RANDOM_(
		'vampires',
		'ghosts',
		'werewolves',
		'demons',
		'angels',
		'skinwalkers',
		'elves',
		'goblins',
		'mermaids',
	);
	
	_MERGE_( $orig_meta, cryptids => $cryptids );
	return $cryptids;
}

sub fiction {
	my $orig_meta = shift // {};
	
	my $fiction = _RANDOM_(
		{ title => 'Harry Potter', author => 'J K Rowling' },
		{ title => 'Tintin', author => 'Herge' },
		{ title => 'Star Wars', author => 'George Lucas' },
		{ title => 'Avengers: Age of Ultron', author => 'Kevin Feige' },
		{ title => 'The Book of Mormon', author => 'Joseph Smith' },
		{ title => 'Lord of the Rings', author => 'J R R Tolkien' },
		{ title => 'The Chronicles of Narnia', author => 'C S Lewis' },
		{ title => 'Game of Thrones', author => 'George R R Martin' },
		{ title => 'Spider-Man', author => 'Stan Lee' },
	);
	
	_MERGE_( $orig_meta, fiction => $fiction );
	return $fiction->{title};
}

sub precious_resource {
	my $orig_meta = shift // {};
	
	my $resource = _RANDOM_(
		'pineapple',
		'oil',
		'coal',
		'uranium',
		'holy water',
		'diamond',
		'blood',
		'gold',
		'silver',
		'neutron star material',
		'Belle Delphine bath water',
		'crystals',
	);
	
	_MERGE_( $orig_meta, precious_resource => $resource );
	return $resource;
}

sub precious_resource_with_quantity {
	my $orig_meta = shift // {};
	my $resource = precious_resource( $orig_meta );
	my $quantity = _RANDOM_(
		'a warehouse full',
		'a lot',
		'unknown quantities',
		'vast amounts',
		'unimaginable quantities',
		'unspeakable quantities',
		'5.3 metric pounds',
		'666 tonnes',
	);
	"$quantity of $resource";
}

sub mind_control_device {
	my $orig_meta = shift // {};
	
	my $mc = _RANDOM_(
		'chemtrails',
		'mind control drugs in the water',
		'5G',
		'WiFi',
		'microchips implanted at birth',
		'vaccines',
		'childhood indoctrination',
		'neurolinguistic programming',
		'video games',
		'mass media',
		'space lasers',
		'hypnotism',
	);
	
	_MERGE_( $orig_meta, mind_control_device => $mc );
	return $mc;
}

sub future_time {
	my $orig_meta = shift // {};
	
	my $time = _RANDOM_(
		'in 2030',
		'by the end of the century',
		'in 2666',
		'when Queen Elizabeth II dies',
		'when the ice caps melt',
		'next Christmas',
	);
	
	_MERGE_( $orig_meta, future_time => $time );
	return $time;
}

sub a_long_time {
	my $orig_meta = shift // {};
	
	my @extras = ();
	for my $actor ( qw/ protagonists antagonists / ) {
		push @extras, sub {
			my $have = $orig_meta->{$actor}{plural} ? 'have' : 'has';
			"for as long as " . ($orig_meta->{$actor}{shortname}//$orig_meta->{$actor}{name}) . " $have existed";
		} if $orig_meta->{$actor}{name};
	}
	
	my $time = _RANDOM_(
		'since 1492',
		'since 1666',
		'since 1066',
		'since the time of Christ',
		'since time immemorial',
		'since the dawn of time',
		'for hundreds of years',
		'for millenia',
		@extras,
	);
	
	_MERGE_( $orig_meta, a_long_time => $time );
	return $time;
}

sub misinformation {
	my $orig_meta = shift // {};
	
	my $info = _RANDOM_(
		'the Earth is round',
		'the Earth goes around the sun',
		'humans are animals',
		sub {
			$orig_meta->{topic} = { name => 'the moon', plural => 0 };
			'men have walked on the moon';
		},
		sub {
			$orig_meta->{topic} = { name => 'electricity', plural => 0 };
			'electricity exists';
		},
		sub {
			$orig_meta->{topic} = { name => 'magnetism', plural => 0 };
			'magnetism is real';
		},
		sub {
			$orig_meta->{topic} = { name => 'gravity', plural => 0 };
			'gravity is real';
		},
		sub {
			$orig_meta->{topic} = { name => 'outer space', plural => 0 };
			'space is real';
		},
		sub {
			$orig_meta->{topic} = { name => 'viruses', plural => 1 };
			'viruses are real';
		},
		sub {
			$orig_meta->{topic} = { name => 'vaccines', plural => 1 };
			'vaccines are safe';
		},
		sub {
			my $animal = real_animal( $orig_meta );
			"the $animal is real";
		},
		sub {
			my $place = random_place( $orig_meta );
			"$place is real";
		},
		'the Earth is 4.5 billion years old',
		'the universe is 14 billion years old',
		'dinosaurs are real',
		'birds are real',
	);
	
	_MERGE_( $orig_meta, misinformation => $info );
	return $info;
}

sub victim {
	my $orig_meta = shift // {};
	
	my $victim = _RANDOM_(
		'Elvis Presley',
		'JFK',
		'Hitler',
		'Robin Williams',
		'Martin Luther King Jr',
		'Abraham Lincoln',
		'King Charles I',
		'Marilyn Monroe',
		'Tupac Shakur',
		'Princess Di',
		'Jeff Buckley',
		'Andy Kaufman',
		'Jim Morrison',
		'Brandon Lee',
		'Lee Harvey Oswald',
		'Archduke Franz Ferdinand',
		'the original Avril Lavigne',
		'Malcolm X',
		'John Lennon',
		'Michael Jackson',
	);
	
	_MERGE_( $orig_meta, victim => $victim );
	return $victim;
}

sub evidence {
	my $orig_meta = shift // {};
	
	my @x = (
		"there's a video about it on YouTube",
		"there was something about it on Facebook",
		"the voices told me",
		"I had a dream",
	);

	if ( my $m = $orig_meta->{misinformation} ) {
		push @x, (
			"they indoctrinate people about '$m' at schools and if it were the truth they wouldn't need to",
			"'$m' gets pushed down our throats by mass media",
		);
	}
	
	if ( my $v = $orig_meta->{victim} ) {
		push @x, (
			"$v died too young",
			"$v sent a letter containing the truth before dying",
			"when they did an autopsy on $v it turned out it was a robot",
			"when they did an autopsy on $v it turned out it was an alien",
			"they never did an autopsy on $v",
			"$v wrote a will",
			sub {
				my $g = shady_group( $orig_meta );
				"$v was secretly one of $g";
			},
			sub {
				my $animal = real_animal( $orig_meta );
				"when they did an autopsy on $v it turned out they were secretly a $animal in a human suit";
			},
		);
	}

	if ( my $c = $orig_meta->{celebrity} ) {
		if ( $c->{female} ) {
			push @x, (
				"you can't trust women",
				"she said so on her Twitter",
			);
		}
		else {
			push @x, (
				"you can't trust men",
				"he said so on his Twitter",
			);
		}
	}

	if ( my $f = $orig_meta->{fiction} ) {
		
		push @x, (
			$f->{title} . " has secret messages encoded in it with numerology",
			$f->{title} . " is satanic",
			sub {
				my $g = shady_group( $orig_meta );
				$f->{author} . " has ties to $g";
			},
			sub {
				my $b = bad_place( $orig_meta );
				$f->{author} . " got taken to $b for questioning";
			},
		);
		
		if ( my $p = $orig_meta->{random_place} ) {
			push @x, (
				$f->{author} . " has a secret home in $p",
				$f->{author} . " was secretly born in $p",
			);
		}
	}
	
	if ( my $animal = $orig_meta->{real_animal} // $orig_meta->{fake_animal} ) {
		push @x, (
			"the $animal wasn't mentioned in the Bible",
			"the $animal was mentioned in the Satanic Verses",
			"the $animal looks kind of weird",
			"nobody has ever seen a $animal in real life",
			"the $animal obviously isn't native to this planet",
			sub { "${ \ shady_group() } sacrifice $animal to the dark lord" },
			"the $animal looks bigger in real life",
			"the $animal makes a funny noise",
		);
	}
	
	if ( my $mc = $orig_meta->{mind_control_device} ) {
		my $time = a_long_time();
		push @x, (
			"everybody knows $mc is real",
			sub { "$mc has been researched by ${ \ shady_group($orig_meta) } $time" },
			sub { "$mc was used to conceal ${ \ shady_group($orig_meta) } $time" },
			sub { "$mc was used to infiltrate ${ \ shady_group($orig_meta) }" },
		);
	}

	if ( my $ft = $orig_meta->{future_time} ) {
		push @x, (
			"some of the few people still alive $ft time-travelled back to tell us",
			"the people still alive $ft sent us hidden messages in ${ \ fiction() }",
			"it will all become clear $ft",
		);
	}

	if ( my $d = $orig_meta->{disease} ) {
		push @x, (
			"patients with $d keep disappearing from hospitals",
			"patients with $d are being silenced by the government",
			"doctors working on $d are being killed",
			"$d probably isn't even a real disease",
			"nobody has ever died of $d",
		);
	}

	if ( my $r = $orig_meta->{precious_resource} ) {
		my $bad = $orig_meta->{antagonist}{name}
			// $orig_meta->{protagonist}{name}
			// $orig_meta->{shady_group}{name}
			// shady_group( $orig_meta );
		push @x, (
			"the Wikipedia entry for $r keeps getting edited by $bad",
			"$bad keeps buying $r secretly on the stock market",
			"the global supply of $r is at an all time low",
			"have you ever seen $r for real with your own eyes",
			"$r is so damn expensive",
			"$r is really rare",
		);
	}

	if ( my $topic = $orig_meta->{topic} ) {
		my $topicname = $topic->{name};
		my $have      = $topic->{plural} ? 'have' : 'has';
		push @x, (
			"there's hidden clues in the Wikipedia page about $topicname",
			"Bible numerology has clues about $topicname",
			"$topicname $have always been suspicious",
			"$topicname $have connections to THEM",
		);
	}

	if ( my $p = $orig_meta->{random_place} // $orig_meta->{bad_place} ) {
		my $bad = $orig_meta->{antagonist}{name}
			// $orig_meta->{protagonist}{name}
			// $orig_meta->{shady_group}{name}
			// shady_group( $orig_meta );
		push @x, (
			"the Wikipedia entry for $p keeps getting edited by $bad",
			"$bad has ties to $p",
			"$p probably isn't a real place anyway",
		);
	}

	for my $actor ( qw/ protagonists antagonists / ) {
		next unless $orig_meta->{$actor}{name};
		
		my $name   = $orig_meta->{$actor}{shortname} // $orig_meta->{$actor}{name};
		my $have   = $orig_meta->{$actor}{plural} ? 'have' : 'has';
		my $are    = $orig_meta->{$actor}{plural} ? 'are'  : 'is';
		
		push @x, (
			"$name $have included it in their manifesto",
			"$name $have been strangely quiet about it",
			"$name $are always untrustworthy",
			"$name $are controlling everything",
			"if you Google for $name there's loads of info",
			"the '$name Truth' Facebook page says so",
		);
		
		if ( my $animal = $orig_meta->{real_animal} // $orig_meta->{fake_animal} ) {
			push @x, "$name $have a picture of the $animal on their Wikipedia entry";
		}
		
		if ( my $place  = $orig_meta->{random_place} ) {
			push @x, "$name $have a secret base in $place";
		}
		
		if ( my $topic = $orig_meta->{topic} ) {
			my $topicname = $topic->{name};
			push @x, (
				"$name ${( $orig_meta->{$actor}{plural} ? \'keep' : \'keeps' )} editing the Wikipedia page about $topicname",
				"$name $are known to have ties to $topicname",
				"'$name' is almost an anagram of '$topicname'",
				"'$name' is the Hebrew word for '$topicname'",
				"'$name' is an anagram of '$topicname' (if you spell it wrong)",
			);
		}
	}

	my @evidences = List::Util::uniq( map { _RANDOM_(@x) } 1..2 );
	
	if ( @evidences == 2 ) {
		my ( $e1, $e2 ) = @evidences;
		return _RANDOM_(
			"You can tell this is the truth because $e1 and $e2.",
			"I know because $e1 and $e2.",
			"You just need to connect the dots. " . ucfirst( "$e1 and $e2." ),
			"I used to be asleep like you, but then I saw the clues. " . ucfirst( "$e1 and $e2. WAKE UP!" ),
			"THEY HIDE THE TRUTH IN PLAIN SIGHT. " . ucfirst( "$e1 and $e2." ),
			"You won't believe how deep the rabbit hole goes. " . ucfirst( "$e1 and $e2." ),
			ucfirst( "$e1 and $e2. It's obvious if you connect the dots." ),
			ucfirst( "$e1 and $e2. They leave clues to mock us." ),
			ucfirst( "$e1 and $e2. Isn't it obvious?" ),
			ucfirst( "$e1 and $e2. Wake up, sheeple!" ),
			sub {
				my $e3 = uc _RANDOM_(@x);
				ucfirst( "$e1 and $e2. Isn't it obvious? $e3!" );
			},
			sub {
				my $e3 = uc _RANDOM_(@x);
				ucfirst( "$e1 and $e2. They leave clues to mock us! $e3! MOCK! MOCK!" );
			},
			sub {
				my $t = {};
				theory($t);
				ucfirst( "$e1 and $e2. Isn't it obvious? Also: " . $t->{base_theory} );
			},
		);
	}
	elsif ( @evidences == 1 ) {
		my ( $e1 ) = @evidences;
		return _RANDOM_(
			"You can tell the truth because $e1.",
			ucfirst("$e1 and that reveals the truth."),
			"The truth is obvious if you're not a sheep - $e1.",
		);
	}
	
	return _RANDOM_(
		'The truth is plain to see.',
		"You're blind if you can't see the truth.",
		"The truth is obvious if you're not a sheep.",
	);
}

sub hidden_truth {
	my $orig_meta = shift // {};
	
	my $truth = _RANDOM_(
		'the Earth is flat',
		'space is fake',
		'God is real',
		'reincarnation is true',
		sub {
			my $cryptids = cryptids( $orig_meta );
			"$cryptids are real";
		},
		sub {
			my $cryptids = cryptids( $orig_meta );
			my $group    = shady_group( $orig_meta );
			"$group are $cryptids";
		},
		sub {
			$orig_meta->{topic} = { name => 'germs', plural => 1 };
			"germs aren't real"
		},
		sub {
			$orig_meta->{topic} = { name => 'viruses', plural => 1 };
			"viruses aren't real"
		},
		sub {
			my $objects = objects( $orig_meta );
			"$objects are sentient";
		},
		sub {
			my $celebrity = celebrity( $orig_meta );
			my $long_time = a_long_time( $orig_meta );
			"$celebrity has been drinking the blood of infants $long_time to stay looking young";
		},
		sub {
			my $objects = objects( $orig_meta );
			my $group   = shady_group( $orig_meta );
			"$objects were invented by $group";
		},
		sub {
			my $resource = precious_resource( $orig_meta );
			"$resource is a source of free energy";
		},
		sub {
			my $mythplace  = myth_place( $orig_meta );
			my $place      = random_place( $orig_meta );
			"$mythplace is in $place";
		},
		sub {
			my $victim     = victim( $orig_meta );
			my $mythplace  = myth_place( $orig_meta );
			"$victim discovered $mythplace and was killed to keep it a secret";
		},
		sub {
			my $resource = precious_resource( $orig_meta );
			my $disease  = disease( $orig_meta );
			"$resource can cure $disease";
		},
		sub {
			my $animal = real_animal( $orig_meta );
			my $group  = shady_group( $orig_meta );
			"the $animal is a fake animal, engineered by $group";
		},
		sub {
			my $animal = real_animal( $orig_meta );
			"the $animal originally comes from another planet";
		},
		sub {
			my $animal = real_animal( $orig_meta );
			my $group  = shady_group( $orig_meta );
			"the $animal is a fake animal and is just people in costumes";
		},
		sub {
			my $animal = fake_animal( $orig_meta );
			"the $animal is a real animal";
		},
		sub {
			my $time = future_time( $orig_meta );
			"the world will end $time";
		},
		sub {
			my $time = future_time( $orig_meta );
			$orig_meta->{topic} = { name => 'comets', plural => 1 };
			"the comet will hit us $time";
		},
		sub {
			my $place = random_place( $orig_meta );
			$orig_meta->{topic} = { name => 'flooding', plural => 1 };
			"$place was destroyed by floods";
		},
		sub {
			my $place = random_place( $orig_meta );
			my $group = $orig_meta->{shady_group}{name} // shady_group( $orig_meta );
			$orig_meta->{topic} = { name => 'coup d\'etats', plural => 1 };
			"$place is ruled by $group";
		},
		sub {
			my $time = future_time( $orig_meta );
			$orig_meta->{topic} = { name => 'zombies', plural => 1 };
			"the zombie apocalypse will start $time";
		},
		sub {
			my $time = future_time( $orig_meta );
			$orig_meta->{topic} = { name => 'Jesus', plural => 0 };
			"Jesus will return $time";
		},
		sub {
			my $mc    = mind_control_device( $orig_meta );
			my $group = $orig_meta->{shady_group}{name} // shady_group( $orig_meta );
			"THEY ($group) are using $mc";
		},
		sub {
			my $victim = victim( $orig_meta );
			my $place  = bad_place( $orig_meta );
			"$victim is alive and kept at $place";
		},
		sub {
			my $artifact = artifact( $orig_meta );
			my $p = random_place( $orig_meta );
			"$artifact is in $p";
		},
		sub {
			my $victim = victim( $orig_meta );
			$orig_meta->{topic} = { name => 'the antichrist', plural => 0 };
			"$victim was the antichrist";
		},
		sub {
			my $victim = victim( $orig_meta );
			"$victim was a time-traveller";
		},
		sub {
			my $victim = victim( $orig_meta );
			"$victim was an inter-dimensional being";
		},
		sub {
			my $fiction = fiction( $orig_meta );
			"$fiction is historically accurate";
		},
		sub {
			my $fiction = fiction( $orig_meta );
			my $victim = $orig_meta->{victim} // victim( $orig_meta );
			"$fiction was really written by $victim";
		},
	);
	
	_MERGE_( $orig_meta, hidden_truth => $truth );
	return $truth;
}

sub theory {
	my $orig_meta = shift // {};
	
	my $theory = _RANDOM_(
		sub {
			my $group = shady_group( $orig_meta );
			$orig_meta->{protagonists} = $orig_meta->{shady_group};
			my $is = $orig_meta->{protagonists}->{plural} ? 'are' : 'is';
			
			my $misinfo = misinformation( $orig_meta );
			
			my $truth = hidden_truth( $orig_meta );
			
			my $exclaim = _RANDOM_(
				'',
				'',
				" But the truth shall not be buried!",
				" Don't let yourself be deceived!",
			);
			
			ucfirst "$group $is spreading the lie that $misinfo to distract the public from the truth that $truth.$exclaim";
		},
		sub {
			my $protagonists = shady_group( $orig_meta );
			$orig_meta->{protagonists} = $orig_meta->{shady_group};
			
			my $antagonists = shady_group( $orig_meta );
			$orig_meta->{antagonists} = $orig_meta->{shady_group};
			
			my $time = a_long_time( $orig_meta );
			
			my $war_reason = _RANDOM_(
				'Nobody knows why',
				'The reasons for this have been long forgotten',
				sub {
					my $consequence = _RANDOM_(
						'disappears',
						'is assassinated',
						sub {
							my $badplace = bad_place( $orig_meta );
							"is taken away to $badplace";
						},
						sub {
							my $badplace = bad_place( $orig_meta );
							"has their mind wiped at $badplace";
						},
					);
					"Everybody who finds out why $consequence";
				},
				sub {
					my $truth = hidden_truth();
					my $pro   = $orig_meta->{protagonists}{shortname} // $protagonists;
					my $ant   = $orig_meta->{antagonists}{shortname} // $antagonists;
					ucfirst "$pro want to expose the truth that $truth and $ant will do whatever they can to stop them";
				},
			);
			
			ucfirst "$protagonists and $antagonists have been in a secret war with each other $time. $war_reason."
		},
		sub {
			my $group = shady_group( $orig_meta );
			$orig_meta->{protagonists} = $orig_meta->{shady_group};
			
			my $victim = victim( $orig_meta );
			
			my $truth = hidden_truth( $orig_meta );
			
			my $explanation = _RANDOM_(
				sub {
					my $group2 = shady_group( $orig_meta );
					$orig_meta->{antagonists} = $orig_meta->{shady_group};
					
					ucfirst "$victim learnt the truth from $group2";
				},
				"Nobody knows how $victim found out",
				"$victim found out because they were the source of all knowledge",
				"$victim found out using time travel",
				"$victim found out using mind reading",
			);
			
			ucfirst "$group killed $victim to hide the truth that $truth. $explanation.";
		},
		sub {
			my $truth = hidden_truth( $orig_meta );
			
			my $sheeple = _RANDOM_(
				'people are sheeple',
				'they refuse to see the truth',
				'the mass media refuse to report it',
				sub {
					my $group = shady_group( $orig_meta );
					$orig_meta->{protagonists} = $orig_meta->{shady_group};
					my $is = $orig_meta->{protagonists}->{plural} ? 'are' : 'is';
					my $mc = mind_control_device( $orig_meta );
					"$group $is controlling people's minds with $mc";
				},
				sub {
					my $group = shady_group( $orig_meta );
					$orig_meta->{protagonists} = $orig_meta->{shady_group};
					my $have = $orig_meta->{protagonists}->{plural} ? 'have' : 'has';
					my $long_time = a_long_time( $orig_meta );
					"$group $have been hiding it $long_time";
				},
				sub {
					my $group = shady_group( $orig_meta );
					$orig_meta->{protagonists} = $orig_meta->{shady_group};
					my $is = $orig_meta->{protagonists}->{plural} ? 'are' : 'is';
					my $medium = _RANDOM_(
						'the Internet',
						'Twitter',
						'Facebook',
						'Instagram',
						'the mass media',
						'the TV news',
						'Tiktok',
						'both Tiktok and Instagram',
					);
					"$group $is censoring $medium";
				},
			);
			
			ucfirst "$truth but nobody knows because $sheeple.";
		},
		sub {
			my $fiction = fiction( $orig_meta );
			my $truth = hidden_truth( $orig_meta );
			
			ucfirst "$fiction has a hidden message that $truth.";
		},
		sub {
			my $group = shady_group( $orig_meta );
			$orig_meta->{protagonists} = $orig_meta->{shady_group};
			my $are = $orig_meta->{protagonists}->{plural} ? 'are' : 'is';
			
			my $place = random_place( $orig_meta );
			
			ucfirst "$group $are abducting orphan children from $place to sacrifice them to their dark overlord.";
		},
		sub {
			my $group = shady_group( $orig_meta );
			$orig_meta->{protagonists} = $orig_meta->{shady_group};
			my $have = $orig_meta->{protagonists}->{plural} ? 'have' : 'has';
			
			my $resource = precious_resource_with_quantity( $orig_meta );
			
			ucfirst "$group $have $resource.";
		},
	);

	if ( $orig_meta->{protagonists} and not $orig_meta->{antagonists} and _RANDOM_(0..1) ) {
		my $group1 = $orig_meta->{protagonists}{shortname} // $orig_meta->{protagonists}{name};
		my $group2 = shady_group( $orig_meta );
		$orig_meta->{antagonists} = $orig_meta->{shady_group};
		my $know = $orig_meta->{antagonists}->{plural} ? 'know' : 'knows';
		$theory .= " " . ucfirst _RANDOM_(
			sub {
				my $bribe = precious_resource_with_quantity( $orig_meta );
				"$group2 $know the truth but $group1 have paid them off with $bribe.";
			},
			"$group2 $know the truth but $group1 have threatened them to keep them silent.",
			"$group2 were helping them until $group1 betrayed them.",
		);
	}

	_MERGE_( $orig_meta, base_theory => $theory );
	
	my $evidence = evidence( $orig_meta );
	
	$theory .= " $evidence" if $evidence;

	_MERGE_( $orig_meta, theory => $theory );

	return $theory;
}

1;

__END__

=pod

=encoding utf-8

=head1 NAME

Acme::ConspiracyTheory::Random - random theories

=head1 SYNOPSIS

  use feature 'say';
  use Acme::ConspiracyTheory::Random 'theory';
  
  say theory();

=head1 DESCRIPTION

This module exports one function, C<< theory() >> which returns a string.

=head1 BUGS

Please report any bugs to
L<http://rt.cpan.org/Dist/Display.html?Queue=Acme-ConspiracyTheory-Random>.

=head1 SEE ALSO

REDACTED

=head1 AUTHOR

Toby Inkster E<lt>tobyink@cpan.orgE<gt>.

=head1 COPYRIGHT AND LICENCE

This software is copyright (c) 2021 by Toby Inkster.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=head1 DISCLAIMER OF WARRANTIES

THIS PACKAGE IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED
WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF
MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.

