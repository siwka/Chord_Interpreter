Program interpretate long jazz chord notation giving on output the notes that comprise the chord.
For more information about jazz notation go to <a href = 'http://en.wikipedia.org/wiki/Chord_names_and_symbols_(popular_music)#Rules_to_decode_chord_names_and_symbols'> Wikipedia Chord names and symbols </a>

The Program is used in a terminal window suing command line. Future version will allow also file input and might be used from Web.

To start a game from command line type:
>$ bin/chrdint

To start a tests type command below from Chord_Interpreter directory:
>   $ rspec spec/chord_parser_spec.rb [--format doc]  
    $ rspec spec/chord_interpreter_spec.rb [--format doc]  
    $ rspec spec/scanner_spec.rb [--format doc']

Program at current version recognizes all combinations of short and long versions of only correct jazz chord notation and on output prints notes of the chord. There are two visible steps for user: first parser translate any form of jazz chord notation to long jazz notation & prints in on output. In second step interpreter generates singe chord's notes (three of four) of the chord.  
  
This version is a base, and comprises a major of the program: it recognizes scale on which chord is buid (root, third & fifth) then includes additional 7th interval (any kind) if noted. An important characteristic of jazz is the extensive use of sevenths. There are however more additional intervals to consider (like 9th, 11th, 13th, and notation using <I>add</I> and <I>sus</I>). Now user can examine chords in short and long notation that are consist from characters allowed on keyboard (m, M, o, b for flat, #, +, -, min, maj, dim, dom, aug with numbers for additional interval 6, 7 and 5 for fifth). Correct are notations that use symbols (), / are equvalent, e.g. 'Cm7', 'C-7', 'Cmin7', 'Cminmaj7', 'Cmin/maj7', 'Cmin(maj7)', 'CmM7', 'Cm/M7' ,'Cm(M7)', 'C-M7'. 

I left many commented tests. The purpose was to make sure music notation and rules were followed correctly for each scale. Testing all chords in each scale made my work easier. Generally scale consist only flats or only sharp notation. But some additional interval introduce or mix # and ♭. For instance chord with diminished seventh make note to semitone (descending semitone, which is half of the tone): correct chord is F♯	A	C	E♭. Note there is E♭ (flat) not D# even though E♭ and D# are enharmonically equivalent, and scale consist F# meaning its scale is sharp (#). Program does not return double flat notation, e.g. Gbb since F is correct music notation as well.

Program is still in working progress.