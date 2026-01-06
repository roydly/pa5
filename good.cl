class Main {
    main(): Object {
        {
            out_string("Hello, COOL!\n");
            out_int(42);
            out_string("\n");
            
            let x: Int <- 10 in
                let y: Int <- x + 5 in
                    out_int(y);
        }
    };
};

class A {
    foo(): Int { 1 };
};

class B inherits A {
    foo(): Int { 2 };
};

class Main2 {
    test(): Int {
        {
            let a: A <- new B in
                a.foo()
        }
    };
};
