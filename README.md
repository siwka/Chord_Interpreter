Program interpretate long jazz chord notation giving on output the notes that comprise the chord.
For more information about jazz notation go to <a href = 'http://en.wikipedia.org/wiki/Chord_names_and_symbols_(popular_music)#Rules_to_decode_chord_names_and_symbols'> Wikipedia Chord names and symbols </a>

The Program is used in a terminal window suing command line. Future version will allow also file input and might be used from Web.

To start a game from command line type:
>$ bin/chrdint

To start a tests type command below from Chord_Interpreter directory:
>   $ rspec spec/chord_parser_spec.rb [--format doc]  
    $ rspec spec/chord_interpreter_spec.rb [--format doc]  
    $ rspec spec/scanner_spec.rb [--format doc']

Program at current version recognizes short and long versions of only correct jazz chord notation and on output prints notes of the chord. There are two visible steps for user: first parser translate any form of jazz chord notation to long jazz notation & prints in on output. In second step let interpreter generate singe chord's notes of the chord.  
This version comprises a major base of the program: it recognizes scale on which chord is buid (root, third & fifth) then includes additional 7th interval (any kind) if noted. An important characteristic of jazz is the extensive use of sevenths. There are however more additional intervals to consider (like 9th, 11th, 13th, and notation using <I>add</I> and <I>sus</I>).  
I left many commented tests. The purpose was to make sure music notation and rules were followed correctly for each scale. Testing all chords in each scale made my work easier. Generally scale consist only flats or only sharp notation. But some additional interval introduce or mix # and ♭. For instance chord with diminished seventh make note to semitone (descending semitone, which is half of the tone): correct chord is F♯	A	C	E♭. There is E♭ not D# even though E♭ and D# are enharmonically equivalent, and scale consist F# meaning scale is sharp (#). Program does not return double flat notation, e.g. Gbb since F is correct music notation as well.

Program is still in working progress.