# Article-JJQ

"Open Editions Online," an article for a special issue of _James Joyce Quarterly_. Work in progress.

# Abstract

Jonathan Reeve and Hans Walter Gaber, *Open Editions Online*

Our projects, the Open Critical Editions of *Dubliners*, *A Portrait of the Artist as a Young Man*, and *Ulysses*, known collectively as Open Editions, aggregate knowledge about these novels in ways that are community-based, machine-readable, and future-proof. Toward this end, we employ two well-tested technologies: semantic markup with TEI XML (Text Encoding Initiative eXtensible Markup Language), and distributed version control using Git.

TEI XML enables the encoding of semantic information about a text: we label textual features with their literary functions. For each utterance, we mark up the speaker's name. For interior monologue, we mark up from whom the stream of consciousness emanates. For each place mentioned, we give precise latitude and longitude. We also mark up text in foreign languages; mentioned places, people, artistic works, and notable objects; repeated themes or leitmotifs; and genres (songs, poems, prayers). We create internal links between analogous passages, external links to critical discussions of a given passage, and bibliographic links to the targets of allusion, parody, or other intertextual correspondences. Most importantly, the list of features that we mark up is continually expanding. Thus, the editions are never strictly complete, in the traditional sense, but always evolving. Through mark-up templates for knowledge aggregation and, in some cases, creation---that is: for semantic enrichment---, we hope to provide structured data that might be read in computational text analyses, and to provide as well an open, robust base for the creation of future editions.

Git, the distributed version control system on which Open Editions editions are built has long been in widespread use in software development, but is rarely used for textual editing. When applied to textual editing workflows, Git allows for a radical decentering of the power structure of a traditional editorial committee, following similar power structures of open-source software projects. This allows any interested party to contribute markup or code to the project. While we, the project coordinators, must approve any incoming contribution to our version, parallel versions may be created in seconds, each reflecting their maintainers' editorial and annotational choices, opinions, and knowledge. At the time of writing, our editions have seen a total of around twenty contributors, representing the work of librarians, professors of literature, graduate students, and undergraduates, and this number continues to grow. Additionally, since Git requires detailed descriptions of each change or set of changes, this provides us with a mechanism by which to document every change we make, to revert changes as necessary, and to group sets of changes in "branches."

The core texts of the editions are based on XML renderings of Hans Walter Gabler's reading editions of *Ulysses* (1986, from the full edition of 1984/86), *Dubliners* (1993) and *Portrait* (1993) in their respective texts and line-fall identical through all issues of these editions. This means that the Open Editions in community use provide a stable basis also for engaging, too, with issues of textual criticism, editing, and annotation in the dynamics of the born-digital environment.

# Notes

Taken from my July 12th email:

 - The prototypes on Netlify, for me at least, are really just intended to showcase one or two aspects of what is possible with rich TEI encoding. I imagine we could build a few more features to make it more usable, but the canonical text is the TEI XML, and the prototype is just a poor representation of it.
 - The main advantage, I've always felt, of web editions is the ability to dynamically change the text. Scholarly editions are sometimes criticized for being so data-rich that they are difficult to read—if the footnotes take up more space on the page than the text itself, for instance. This shouldn't be a problem for web interfaces, since JavaScript enables the user to interact with the display, and control what he/she sees.
 - Current features include visualizations of:
   - Tags for textual features like songs, poems, prayers, epigraphs. This allows for easy quantitative analysis of these features in the TEI.
   - Tags for language features like foreign words and phrases.
   - Dialogue attribution, that allows for analyses like the ones in the /analysis directory
 - Additional features for the editions might include, at some point in the future:
   - Links to critical articles that discuss a given word or passage.
   - Glosses/explanations for unusual words or Joycean coinages (one of my students is working on Joycean words right now for Ulysses)
   - Internal links to repeating phrases/themes/motifs ("lemonyellow," etc.)

So I see the Netlify prototypes as more like windows into what the TEI looks like, and would probably be more useful to a computational text analyst than to a casual reader of the text. But the line numbers, and maybe the dialogue attribution, might be somewhat useful to a reader, since they help to disambiguate who is speaking at a given moment, especially when that isn't explicitly given by the text. And some future features, like links to critical articles, for example, would be even more useful to a casual reader.

# Outline

 - [X] Goals of Open Editions: 
   - Aggregate literary knowledge
   - Non-destructive, pluralistic scholarly editing
   - Distributed editing

 - [ ] Current and planned features: 
   - [X] Textual features like songs, poems, prayers, media are annotated
   - [X] foreign languages used, and foreign words and expressions
   - [X] links to critical articles that discuss a given word or passage, 
     - which, like JSTOR's _Understanding Shakespeare_ project, allows scholars interested in a particular passage the ability to quickly find articles discussing the passage (a few articles discussing "suck was a queer word")
     - distinctive words (integration with the Joyce Words Dictionary)
   - [X] links to maps of places mentioned (as of writing, we have all of the locations in _Portrait_)

 - [X] Analysis possible: 
    - [X] dialog attribution to speech 
    - [X] mapping

 - [X] Technologies: 
   - Git 
   - TEI XML

 - [X] Currently looking for contributors
    - no technical knowledge necessary
 - [ ] Future plans
    - Dynamic


The task of an editor is to encode literary knowledge into a text, whether knowledge of the text's provenance, its variations, or otherwise. Even the act of italicizing the title of a book encodes knowledge about the function of that title. 
