Program interpretate long jazz chord notation giving on output the notes that comprise the chord.
For more information about jazz notation go to <a href = 'http://en.wikipedia.org/wiki/Chord_names_and_symbols_(popular_music)#Rules_to_decode_chord_names_and_symbols'> Wikipedia Chord names and symbols </a>

The Program is used in a terminal window suing command line. Future version will allow also file input and might be used from Web.

To start a game from command line type:
>$ bin/chrdint

To start a tests type command below from Chord_Interpreter directory:
>   $ rspec spec/chord_parser_spec.rb [--format doc]  
    $ rspec spec/chord_interpreter_spec.rb [--format doc]  
    $ rspec spec/scanner_spec.rb [--format doc']

At this moment program recognize short and long versions of correct jazz chord notation and on output prints notes of the chord. First parser translate any form to long jazz notation, to let interpreter to generate singe chord's notes.  
This version is working majority and comprises a base of the program: it recognizes scale on which chord is buid then includes additional 7th interval (any kind) if noted. An important characteristic of jazz is the extensive use of sevenths. There are however more additional intervals to consider (like 9th, 11th, 13th, and notation using add and sus).  
I left many commented tests. The purpose was to make sure music notation and rules were followed correctly for each scale. For instance chord with dimished fifth make note to semitone (descending semitone, which is half of the tone): correct chord is Bb but A# even though A# enharmonically equivalent and belongs to particular chord's scale. Program does not return double flat notation, e.g. Gbb since F is correct music notation as well.

Program is still in working progress.