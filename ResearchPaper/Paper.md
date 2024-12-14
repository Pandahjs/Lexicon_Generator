The Pseduo Lexical Generator takes in a list of words and their associated traits.
It then generates a unique symbol for each trait and word, before combining
these symbol sets to make a small language of out of the passed in words.

Specifically, it takes the symbol for each generated word and overlays
the symbols for each trait onto it so that it produces a new symbol that
remains consistent with the rest of the language via shared traits.

Introduction
> What do we mean by "Pseduo Lexical Generation"
> Why do we care?

Section 1: Investigation of the Existing
> Chants of Sennaar Priest's Language
> Investigate Potential Rules
> Chants of Sennaar Alchemist's Language
> Establish Rules

Section 2: Building the PCG Pipeline
> Generator Construction
>> Dictionary Input of Words and their Shared Traits
>> PCG Grammars Based Generation of Lines
>> Using the Generator to make symbols for each word and trait
>> Using Constructionist PCG methods to build Symbols for each word and trait.

Section 3: Example of Generation
> Setup of a small 5 word dictionary
>> Man; Living, Good
>> Monster; Living, Evil
>> Temple; Place, Good
>> Sword; Object
>> Not;
> Generate Symbols for Trait Words and Non-Trait Words
> Show Composition after generation.

Section 4: Why do we care?
> Small, narrative languages exist across media.
> These languages help us tell stories and engage our readers, watchers, and players in the fiction.
> Building tools like these empowers more people to build cool things.

-----

ChatGPT Prompt:
Please take the following explaination and paper outline and turn it into
a fully written academic paper.

The Pseduo Lexical Generator takes in a list of words and their associated traits.
It then generates a unique symbol for each trait and word, before combining
these symbol sets to make a small language of out of the passed in words.

Specifically, it takes the symbol for each generated word and overlays
the symbols for each trait onto it so that it produces a new symbol that
remains consistent with the rest of the language via shared traits.

Introduction
> What do we mean by "Pseduo Lexical Generation"
> Why do we care?

Section 1: Investigation of the Existing
> Chants of Sennaar Priest's Language
> Investigate Potential Rules
> Chants of Sennaar Alchemist's Language
> Establish Rules

Section 2: Building the PCG Pipeline
> Generator Construction
>> Dictionary Input of Words and their Shared Traits
>> PCG Grammars Based Generation of Lines
>> Using the Generator to make symbols for each word and trait
>> Using Constructionist PCG methods to build Symbols for each word and trait.

Section 3: Example of Generation
> Setup of a small 5 word dictionary
>> Man; Living, Good
>> Monster; Living, Evil
>> Temple; Place, Good
>> Sword; Object
>> Not;
> Generate Symbols for Trait Words and Non-Trait Words
> Show Composition after generation.

Section 4: Why do we care?
> Small, narrative languages exist across media.
> These languages help us tell stories and engage our readers, watchers, and players in the fiction.
> Building tools like these empowers more people to build cool things.

-------
Fact Checked Chat GPT Response
-------

**Title: Pseudo-Lexical Generation: Constructing Meaningful Symbols Through Trait-Based PCG**

---

### **Abstract**

This paper introduces the concept of *Pseudo Lexical Generation* (PLG), a method that uses procedural content generation (PCG) techniques to generate symbols that represent words and their associated traits. Through a dynamic process, the PLG creates a small, internally consistent language by combining individual symbols for words with trait-based overlays, forming a cohesive linguistic system. We explore the construction of the PLG pipeline, demonstrate the process of symbol generation, and provide an example illustrating its application. The paper concludes by discussing the significance of such systems in creative media, particularly for the generation of small, narrative languages used in fiction and gameplay.

---

### **Introduction**

Language, in all its complexities, is an integral aspect of human culture, communication, and creativity. Various forms of media, literature, film, video games, etc, 
also called *interactive fiction—constructed languages* (or *conlangs*) play a significant role in enriching storytelling and world-building. From J.R.R. Tolkien's 
Elvish languages to the Dothraki in *Game of Thrones*, the creation of fictional languages often involves intricate systems of phonetics, grammar, and meaning.
However, the construction of a language from scratch can be a time-consuming and resource-intensive process. 

This paper proposes an innovative method of generating pseudo-lexical systems through procedural content generation (PCG) techniques. We define *Pseudo Lexical Generation* (PLG) 
as the creation of a linguistic system where words are represented by symbols that incorporate both inherent and trait-based characteristics. These symbols interact with each 
other in a way that respects certain shared rules, producing a small, internally consistent language. The goal of this approach is to make language generation both efficient 
and flexible, while still maintaining the narrative and thematic coherence necessary for storytelling and engagement.

We care about this because small, narrative languages are a powerful tool for enhancing the immersion and depth of fictional worlds. The ability to generate these languages 
procedurally not only expands the creative possibilities for writers and game designers but also democratizes the process of language creation, making it accessible to a wider 
range of creators.

---

### **Section 1: Investigation of the Existing**

#### **Chants of Sennaar Priest's Language**

The *Chants of Sennaar* is a notable example of a constructed language designed for thematic and narrative purposes. Its language system was inspired by ancient sacred languages, 
where each word is intricately tied to its spiritual and mystical significance. The primary feature of this language is its use of symbols that convey both literal and metaphorical 
meaning. Each symbol is not only a representation of a word but also imbued with symbolic traits that express various qualities such as divine will, purity, and sanctity.

When analyzing the Chants of Sennaar Priest's language, we see that the symbols themselves function as linguistic units, but also as spiritual markers. The overlap of meanings and 
shared traits across symbols enables the language to transcend traditional linguistic boundaries, providing a framework that influences both the spoken and non-verbal aspects of 
communication.

#### **Investigate Potential Rules**

One of the key characteristics of the Chants of Sennaar is the way in which its symbols interact with one another. The rules governing this interaction are not purely grammatical 
but are instead rooted in symbolic relationships that convey a deeper layer of meaning. For instance, the presence of a divine symbol in a phrase can alter the tone or interpretation 
of the words that surround it. This layering of meaning is a crucial aspect of the language, suggesting that any language generation system should prioritize the inclusion of 
trait-based properties that influence symbol formation.

We propose that a similar approach can be applied to the development of a procedural system capable of generating symbols that reflect both the word's meaning and its associated traits, 
while ensuring that the resulting language remains internally consistent.

#### **Chants of Sennaar Alchemist's Language**

In contrast to the priest's language, the Alchemist's language in the *Chants of Sennaar* emphasizes a more logical and systematic approach to symbol generation. 
The symbols used by alchemists are designed to reflect scientific principles, such as transformation, equilibrium, and balance. The alchemical language consists 
of a smaller set of core symbols, each of which can be combined with others to represent more complex concepts.

From this analysis, we can draw useful insights for the design of a PLG system. Specifically, the Alchemist's language suggests that word-symbols can be modular 
and composed of smaller, base symbols that represent traits. These base symbols could be overlaid onto one another to generate new meanings and associations, 
providing a flexible yet coherent system for language construction.

#### **Establish Rules**

Both the Priest's and Alchemist's languages demonstrate the importance of defining rules that govern how symbols interact with one another. 
The generation of meaningful symbols requires an underlying set of structural principles, whether they are rooted in spiritual, scientific, 
or narrative functions. These principles can be distilled into a formal grammar system that defines how words, traits, and their associated 
symbols combine to produce a language.

---

### **Section 2: Building the PCG Pipeline**

#### **Generator Construction**

The core of the PLG system is its generator, which takes a list of words and their associated traits as input and outputs a set of unique symbols. 
The generator is based on the principles of procedural content generation, which allows for the automated creation of content through predefined rules.

##### **Dictionary Input of Words and Their Shared Traits**

The first step in the process involves constructing a dictionary of words along with their corresponding traits. Each word in the dictionary is paired 
with a set of traits that describe its meaning, function, or other qualities. For example, a word like *"man"* may be associated with traits such as 
"living" and "good," while the word *"monster"* might have the traits "living" and "evil."

##### **PCG Grammars-Based Generation of Lines**

Once the dictionary has been constructed, the next step is to generate grammatical structures that allow words to combine into meaningful phrases. 
These structures follow specific rules that govern the relationships between different symbols and their associated traits. For instance, a 
sentence might combine the symbols for "living" and "good" in a specific order to form a phrase that expresses a positive concept.

##### **Using the Generator to Make Symbols for Each Word and Trait**

The generator creates individual symbols for each word and each trait. These symbols are generated by mapping words to their symbolic representations 
and then applying overlay techniques to add the traits. The resulting symbols are unique to each word and reflect the particular combination of attributes assigned to it.

##### **Using Constructionist PCG Methods to Build Symbols for Each Word and Trait**

In addition to traditional PCG methods, we employ constructionist techniques to build symbols. Constructionist methods involve the creation of symbols 
through a process of recombination, where smaller components (such as base symbols) are combined in various ways to generate larger, more complex symbols. 
This approach allows for the generation of symbols that are flexible and scalable, while still adhering to the underlying rules of the language.

---

### **Section 3: Example of Generation**

#### **Setup of a Small 5-Word Dictionary**

To demonstrate the PLG process, consider the following small dictionary of five words:

- **Man:** Living, Good
- **Monster:** Living, Evil
- **Temple:** Place, Good
- **Sword:** Object
- **Not:** (Negation)

#### **Generate Symbols for Trait Words and Non-Trait Words**

Each word is first assigned a symbol based on its inherent meaning. For example, the symbol for "man" might incorporate an 
abstract representation of a living being, combined with a marker for goodness. For "monster," the symbol would reflect 
its living nature as well as incorporate an evil marker. Non-trait words, such as "sword," would be represented with a 
more neutral symbol, indicating its function as an object.

#### **Show Composition After Generation**

Once the symbols for each word and trait are generated, they can be combined according to the grammatical rules of the system. 
For instance, a phrase like "man not monster" would generate a symbol for "monster" overlaid with the negation symbol and then 
combined with the symbol for "man." The result would be a new symbol that communicates the idea of a man who is not a monster, 
maintaining consistency with the language's underlying rules.

---

### **Section 4: Why Do We Care?**

#### **Small, Narrative Languages Exist Across Media**

Small, narrative languages are found in a wide range of media, from fantasy novels to video games. These languages help create 
depth and immersion in fictional worlds, making them feel more authentic and lived-in. However, the creation of such languages 
is typically labor-intensive, requiring linguistic expertise and careful attention to detail.

#### **These Languages Help Us Tell Stories and Engage Our Audiences**

Narrative languages are not only about aesthetics; they are functional tools for storytelling. They can convey information, 
enhance themes, and shape the emotional tone of a story. Whether it's the use of Elvish in *Lord of the Rings* or the Dovahzul 
in *Skyrim*, these languages serve to enrich the world-building and deepen the audience's engagement with the fictional universe.

#### **Building Tools Like These Empower More People to Build Cool Things**

By making the process of language generation more accessible, we empower more creators—writers, game designers, and filmmakers—to 
build worlds that are richer and more immersive. Tools like the Pseudo Lexical Generator lower the barrier to entry for creating 
unique, meaningful languages and symbols, opening up new possibilities for creative expression.

---

### **Conclusion**

Pseudo Lexical Generation represents an innovative approach to constructing languages through procedural content generation. By 
combining words with trait-based symbols, we can create small, internally consistent languages that serve the needs of narrative 
and world-building in fiction. This paper has outlined the process of constructing such a system, provided an example of its 
application, and demonstrated the potential of PLG to enhance creative storytelling.


-------------------------------------------
Alex's Writing                            =
-------------------------------------------


-------------------------------------------
Jon's Writing                           =
-------------------------------------------

Introduction

Language is one of the most versatile tools humanity has ever developed, capable of encoding complex ideas, emotions, and stories. In computational linguistics, there is a growing interest in not only understanding and processing existing languages but also in generating entirely new ones. This process, often referred to as "pseudo lexical generation," explores how small narrative languages—synthetic languages with specific purposes or constrained vocabularies—can be created to support storytelling, world-building, and computational experiments.

Small narrative languages, as a subset of constructed languages (conlangs), focus on their applicability within limited contexts, such as fictional worlds, constrained storytelling environments, or machine learning applications. Unlike general-purpose languages, these synthetic constructs are often designed with targeted communicative goals in mind, such as expressing a specific cultural perspective, encoding unique storytelling mechanics, or representing abstract concepts through compact and symbolic lexicons.

The pseudo lexical generator discussed in this paper is implemented using the Godot engine. It allows users to serialize basic concepts, such as verbs, living entities, and places, into a structured dictionary. Additional words are then described using these primary concepts. The system generates random draws for the concepts, which are subsequently used to create new language symbols representing the words derived from them. This approach enables the creation of novel languages, where the limits on the number of languages generated reside solely in the set of symbols provided by the user. Each unique set of symbols defines a new language, offering an expansive potential for linguistic variation.

The applications of this system are diverse and compelling. For instance, it can be used to immerse players in the story of a game by giving "local" NPCs their own language, enhancing the depth of the fictional world. Alternatively, it could serve as the foundation for a game mechanic centered around discovering and deciphering symbols of an unknown language. These examples highlight the system’s potential to enrich interactive storytelling and create unique player experiences.

This paper explores the theoretical underpinnings, methodologies, and applications of pseudo lexical generation in the context of narrative construction. It aims to establish a framework for understanding how small narrative languages can enhance storytelling, offer insights into linguistic evolution, and serve as tools for computational creativity. Through this investigation, we seek to address key questions: How can pseudo lexical generation be systematically approached? What are the practical benefits of using such languages in constrained narratives? And how can emerging technologies make this process more accessible to creators and researchers alike?

-------------------------------------------
Harris' Writing                           =
-------------------------------------------

Section 1: Investigation of the Existing
Setting out with the specific goal of generating small narrative pseudo-languages, we knew we had to first 
understand what makes these languages feel authentic and believable. What characteristics do they possess 
that allow us to perceive them as “real” in the context of a fictional world? To answer these questions, 
we decided to investigate pre-existing handcrafted narrative languages to uncover insights into their structure 
and design. By studying these languages, we hoped to identify key elements that we could incorporate into 
our own language generator to achieve a similar sense of authenticity.

Our journey took an interesting turn when we came across a post on Steam by a user with the alias "Aeith," 
who had explored the indie title Chants of Sennaar in great detail. In this post, Aeith discussed their 
efforts to extend and expand the languages used within the game. As they delved deeper into the game’s 
linguistic structure, they made a number of fascinating observations, one of which would later form the 
foundation of our own language generation system. This discovery was pivotal to our project, as it offered 
a concrete example of how a small, fictional language could feel coherent and structured without relying on 
the complex intricacies of a full-fledged constructed language.

Aeith had studied the various languages in Chants of Sennaar and identified a few unique patterns that helped 
tie the symbols and their meanings together. For instance, they pointed out specific glyphs within the language 
of the "Priests" faction that were consistently repeated, each serving as a key marker for certain concepts. 
Take a look at this example from the Priests’ language: <INSERT IMAGE OF PRIESTS LANGUAGE AND ENGLISH CORRESPONDING WORDS> 
By analyzing the language, Aeith discovered that certain symbols were used to represent specific themes or categories. 
One such glyph, for example, <INSERT IMAGE OF GLYPH 1>, consistently indicated the concept of a place. 
This repetition of the glyph across different words helped establish a semantic link between the word and its meaning, 
giving the language a sense of structure and predictability.

Similarly, another glyph <INSERT IMAGE OF GLYPH 2> was used to represent living things. This use of consistent, 
recurring symbols to signify particular types of concepts or entities became a crucial insight for us. It was 
this very concept—repeated, meaningful glyphs—that would serve as the cornerstone of our language generator.

Section 2: Building the PCG Pipeline
With our newfound understanding of the system we were building, we organized ourselves into three separate tasks, 
each focusing on a critical component of the project. One team member was tasked with constructing the dictionary 
system, which would manage and track the words within the language and their associated traits. Another team member 
focused on the glyph generator, responsible for creating the basic symbols that would later be used in our language. 
The third member worked on the compositor, a system designed to take the words and their traits from the dictionary 
and combine the generated glyphs to form complete language symbols.

To expedite the development process and speed up iteration times, we decided to use the free and open-source Godot 
Game Engine. We chose Godot due to its permissive license, which allowed us the flexibility to adapt and distribute 
our work freely, and its ease of use, which helped us focus more on the project itself rather than dealing with 
complex engine configurations or licensing issues.

The dictionary system, while seemingly simple, is a crucial part of the project. It primarily functions as a dictionary 
data structure, mapping strings (the words) to arrays of strings (the associated traits). However, its functionality 
extends beyond just storing data—it's also responsible for saving the dictionary in a JSON file. This feature ensures 
that our data persists across sessions, allowing the project to maintain its state and enabling us to pick up right 
where we left off in future work.

Next comes the more complex task of glyph generation. The glyph generator is responsible for creating the visual symbols 
that represent the words in our language. To ensure the glyphs are neither too simple nor too complex, we used Gaussian 
Randomness. This approach helps avoid the creation of unrealistically small or intricate glyphs, maintaining a balance 
between detail and clarity. Additionally, Gaussian Randomness is used in a more subtle way to prevent the generation of 
overly large or simplistic glyphs. Strokes play a key role in maintaining the integrity of the glyphs, preventing them 
from devolving into disconnected lines. Each stroke segment follows a Gaussian-defined length, as we discussed earlier, 
and its direction is determined by a uniform random distribution. There are specific "spikes" in the distribution that 
increase the likelihood of the stroke aligning with one of the cardinal or intermediate directions. For instance, each 
cardinal direction has a 1/6 chance, while each intermediate direction has a 1/12 chance. The remaining directions are 
evenly distributed across the remaining 1/2 of the probability space. The decision to finish a stroke and begin a new 
one is made using deck randomness, a technique that not only controls the number of strokes in each glyph but also keeps 
the number of stroke segments varied and unpredictable.

Finally, the compositor system brings everything together. It starts by generating a mapping of trait words to their 
corresponding unique glyphs, as well as a similar mapping for non-trait words. After this, the compositor generates 
random placements for the trait glyphs. These glyph placements are randomized only once to ensure consistency 
throughout the language. Their positioning and recurrence are critical because repetition helps users recognize the 
traits associated with the words. Non-trait words are then placed at the center of the glyph, while the trait glyphs 
are superimposed over the main word symbol. This process creates the final symbol that will represent a complete word 
in our newly constructed language. The compositor's role is essential, as it takes the foundation built by the dictionary 
and glyph generation systems and combines them into the visual language symbols needed to communicate effectively with 
the end user.

Section 3: Example of Generation
Let us now walk through a detailed example to better understand the process. For this example, we will use 
a limited dictionary and walk through how we would generate a new language for the words and their associated traits. 
Suppose our dictionary contains the following set of words, each with its corresponding traits:
- Man: Living, Good
- Monster: Living, Evil
- Temple: Place, Good
- Sword: Object
- Not: (No Traits)

In this case, we have five words in our dictionary: Man, Monster, Temple, Sword, and Not. Alongside the words, we 
also have a list of traits that describe different concepts. These traits include Living, Good, Evil, Place, and Object. 
Our task is to generate symbols for these words based on their associated traits.

The first step in our process is to load each of these traits into our dictionary. The dictionary is a fundamental part 
of the system as it helps us organize and manage the relationships between words and their traits. Once the traits are 
in place, we then load each word into the dictionary, including their trait associations. This ensures that every word 
is connected to the correct traits, making it easier to generate appropriate glyphs later on. For instance, we know that 
"Man" is associated with the traits "Living" and "Good," while "Monster" is associated with "Living" and "Evil." This 
trait-based structure forms the foundation for the glyph generation process.

Once the dictionary is set up, the next step is to generate glyphs for each of the traits. Each trait is represented by 
a unique symbol that captures the essence of that concept. These glyphs are key to the language's structure, as they will 
be used repeatedly to form words and phrases. The symbols for the traits are carefully designed, taking into account the 
meaning of each trait and how they might interact visually with other symbols. For example, the glyph for "Living" might 
be different from the glyph for "Place," as they represent distinct concepts. These glyphs are then cataloged in a table 
for easy reference. Table 1 below shows the glyphs for each of the traits.

<INSERT TABLE 1>

Now that we have generated symbols for the traits, we move on to the next step: creating symbols for the non-trait words. 
Non-trait words, such as "Man," "Monster," "Temple," and "Sword," do not directly correspond to a specific trait, but they 
are still important to the language. These words are represented by unique glyphs that incorporate the traits they are 
associated with. For example, the word "Man," which is associated with the traits "Living" and "Good," will combine the 
glyphs for these traits into a single symbol. Similarly, "Monster," associated with "Living" and "Evil," will combine the 
glyphs for those traits. This step ensures that each word in the language is visually linked to its meaning. The symbols 
for the non-trait words are presented in Table 2 below.

<INSERT TABLE 2>

With the trait glyphs and non-trait word glyphs ready, we move on to the final step: combining the glyphs into a complete 
symbol for each word. This is where the compositor comes in. The compositor takes the glyphs for each word, arranges them 
based on their trait associations, and generates the final visual representation of the word. The compositor ensures that 
the correct glyphs are combined in a way that makes sense both visually and semantically. For example, the word "Man" will 
have the glyphs for "Living" and "Good" arranged in such a way that reflects both the meaning of the word and the traits it 
represents. Once all the glyphs are combined, we have the final symbols ready for use. Chart 1 below illustrates the final 
symbols for each word.

<INSERT CHART 1>

By following this process, we are able to create a coherent, structured language with meaningful visual symbols for each word. 
The key to this process is the use of traits and their associated glyphs, which provide a consistent framework for generating 
symbols. Through this approach, we can generate new languages that feel both functional and authentic, allowing for creative 
expression while maintaining a sense of structure.
