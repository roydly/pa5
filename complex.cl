class Animal {
    name: String;
    speak(): String { "..." };
};

class Dog inherits Animal {
    speak(): String { "Woof!" };
};

class Cat inherits Animal {
    speak(): String { "Meow!" };
};

class Speaker {
    talk(a: Animal): String {
        a.speak()
    };
};

class Main {
    main(): Object {
        {
            let speaker: Speaker <- new Speaker,
                dog: Dog <- new Dog,
                cat: Cat <- new Cat in {
                dog.name <- "Rex";
                cat.name <- "Misty";
                out_string("Dog says: ");
                out_string(speaker.talk(dog));
                out_string("\nCat says: ");
                out_string(speaker.talk(cat));
            }
        }
    };
};
