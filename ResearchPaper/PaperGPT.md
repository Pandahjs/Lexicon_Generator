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
Chat GPT Response
-------

**Title: Pseudo-Lexical Generation: Constructing Meaningful Symbols Through Trait-Based PCG**

---

### **Abstract**

This paper introduces the concept of *Pseudo Lexical Generation* (PLG), a method that uses procedural content generation (PCG) techniques to generate symbols that represent words and their associated traits. Through a dynamic process, the PLG creates a small, internally consistent language by combining individual symbols for words with trait-based overlays, forming a cohesive linguistic system. We explore the construction of the PLG pipeline, demonstrate the process of symbol generation, and provide an example illustrating its application. The paper concludes by discussing the significance of such systems in creative media, particularly for the generation of small, narrative languages used in fiction and gameplay.

---

### **Introduction**

Language, in all its complexities, is an integral aspect of human culture, communication, and creativity. In various forms of media—whether literature, film, video games, or interactive fiction—constructed languages (or *conlangs*) play a significant role in enriching storytelling and world-building. From J.R.R. Tolkien's Elvish languages to the Dothraki in *Game of Thrones*, the creation of fictional languages often involves intricate systems of phonetics, grammar, and meaning. However, the construction of a language from scratch can be a time-consuming and resource-intensive process. 

This paper proposes an innovative method of generating pseudo-lexical systems through procedural content generation (PCG) techniques. We define *Pseudo Lexical Generation* (PLG) as the creation of a linguistic system where words are represented by symbols that incorporate both inherent and trait-based characteristics. These symbols interact with each other in a way that respects certain shared rules, producing a small, internally consistent language. The goal of this approach is to make language generation both efficient and flexible, while still maintaining the narrative and thematic coherence necessary for storytelling and engagement.

We care about this because small, narrative languages are a powerful tool for enhancing the immersion and depth of fictional worlds. The ability to generate these languages procedurally not only expands the creative possibilities for writers and game designers but also democratizes the process of language creation, making it accessible to a wider range of creators.

---

### **Section 1: Investigation of the Existing**

#### **Chants of Sennaar Priest's Language**

The *Chants of Sennaar* is a notable example of a constructed language designed for thematic and narrative purposes. Its language system was inspired by ancient sacred languages, where each word is intricately tied to its spiritual and mystical significance. The primary feature of this language is its use of symbols that convey both literal and metaphorical meaning. Each symbol is not only a representation of a word but also imbued with symbolic traits that express various qualities such as divine will, purity, and sanctity.

When analyzing the Chants of Sennaar Priest's language, we see that the symbols themselves function as linguistic units, but also as spiritual markers. The overlap of meanings and shared traits across symbols enables the language to transcend traditional linguistic boundaries, providing a framework that influences both the spoken and non-verbal aspects of communication.

#### **Investigate Potential Rules**

One of the key characteristics of the Chants of Sennaar is the way in which its symbols interact with one another. The rules governing this interaction are not purely grammatical but are instead rooted in symbolic relationships that convey a deeper layer of meaning. For instance, the presence of a divine symbol in a phrase can alter the tone or interpretation of the words that surround it. This layering of meaning is a crucial aspect of the language, suggesting that any language generation system should prioritize the inclusion of trait-based properties that influence symbol formation.

We propose that a similar approach can be applied to the development of a procedural system capable of generating symbols that reflect both the word's meaning and its associated traits, while ensuring that the resulting language remains internally consistent.

#### **Chants of Sennaar Alchemist's Language**

In contrast to the priest's language, the Alchemist's language in the *Chants of Sennaar* emphasizes a more logical and systematic approach to symbol generation. The symbols used by alchemists are designed to reflect scientific principles, such as transformation, equilibrium, and balance. The alchemical language consists of a smaller set of core symbols, each of which can be combined with others to represent more complex concepts.

From this analysis, we can draw useful insights for the design of a PLG system. Specifically, the Alchemist's language suggests that word-symbols can be modular and composed of smaller, base symbols that represent traits. These base symbols could be overlaid onto one another to generate new meanings and associations, providing a flexible yet coherent system for language construction.

#### **Establish Rules**

Both the Priest's and Alchemist's languages demonstrate the importance of defining rules that govern how symbols interact with one another. The generation of meaningful symbols requires an underlying set of structural principles, whether they are rooted in spiritual, scientific, or narrative functions. These principles can be distilled into a formal grammar system that defines how words, traits, and their associated symbols combine to produce a language.

---

### **Section 2: Building the PCG Pipeline**

#### **Generator Construction**

The core of the PLG system is its generator, which takes a list of words and their associated traits as input and outputs a set of unique symbols. The generator is based on the principles of procedural content generation, which allows for the automated creation of content through predefined rules.

##### **Dictionary Input of Words and Their Shared Traits**

The first step in the process involves constructing a dictionary of words along with their corresponding traits. Each word in the dictionary is paired with a set of traits that describe its meaning, function, or other qualities. For example, a word like *"man"* may be associated with traits such as "living" and "good," while the word *"monster"* might have the traits "living" and "evil."

##### **PCG Grammars-Based Generation of Lines**

Once the dictionary has been constructed, the next step is to generate grammatical structures that allow words to combine into meaningful phrases. These structures follow specific rules that govern the relationships between different symbols and their associated traits. For instance, a sentence might combine the symbols for "living" and "good" in a specific order to form a phrase that expresses a positive concept.

##### **Using the Generator to Make Symbols for Each Word and Trait**

The generator creates individual symbols for each word and each trait. These symbols are generated by mapping words to their symbolic representations and then applying overlay techniques to add the traits. The resulting symbols are unique to each word and reflect the particular combination of attributes assigned to it.

##### **Using Constructionist PCG Methods to Build Symbols for Each Word and Trait**

In addition to traditional PCG methods, we employ constructionist techniques to build symbols. Constructionist methods involve the creation of symbols through a process of recombination, where smaller components (such as base symbols) are combined in various ways to generate larger, more complex symbols. This approach allows for the generation of symbols that are flexible and scalable, while still adhering to the underlying rules of the language.

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

Each word is first assigned a symbol based on its inherent meaning. For example, the symbol for "man" might incorporate an abstract representation of a living being, combined with a marker for goodness. For "monster," the symbol would reflect its living nature but would instead incorporate an evil marker. Non-trait words, such as "sword," would be represented with a more neutral symbol, indicating its function as an object.

#### **Show Composition After Generation**

Once the symbols for each word and trait are generated, they can be combined according to the grammatical rules of the system. For instance, a phrase like "man not monster" would generate a symbol for "man" overlaid with the negation symbol and then combined with the symbol for "monster." The result would be a new symbol that communicates the idea of a man who is not a monster, maintaining consistency with the language's underlying rules.

---

### **Section 4: Why Do We Care?**

#### **Small, Narrative Languages Exist Across Media**

Small, narrative languages are found in a wide range of media, from fantasy novels to video games. These languages help create depth and immersion in fictional worlds, making them feel more authentic and lived-in. However, the creation of such languages is typically labor-intensive, requiring linguistic expertise and careful attention to detail.

#### **These Languages Help Us Tell Stories and Engage Our Audiences**

Narrative languages are not only about aesthetics; they are functional tools for storytelling. They can convey information, enhance themes, and shape the emotional tone of a story. Whether it's the use of Elvish in *Lord of the Rings* or the Dovahzul in *Skyrim*, these languages serve to enrich the world-building and deepen the audience's engagement with the fictional universe.

#### **Building Tools Like These Empower More People to Build Cool Things**

By making the process of language generation more accessible, we empower more creators—writers, game designers, and filmmakers—to build worlds that are richer and more immersive. Tools like the Pseudo Lexical Generator lower the barrier to entry for creating unique, meaningful languages and symbols, opening up new possibilities for creative expression.

---

### **Conclusion**

Pseudo Lexical Generation represents an innovative approach to constructing languages through procedural content generation. By combining words with trait-based symbols, we can create small, internally consistent languages that serve the needs of narrative and world-building in fiction. This paper outlines the process of constructing such a system, provides an example of its application, and demonstrates the potential of PLG to enhance creative storytelling.
