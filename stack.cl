class Stack inherits IO {
    top: Object;
    next: Stack;

    is_empty(): Bool { next = void };

    push(x: Object): SELF_TYPE {
        {
            let new_stack: Stack <- new Stack in {
                new_stack.top <- x;
                new_stack.next <- self;
                new_stack;
            }
        }
    };

    pop(): Object {
        {
            if is_empty() then abort()
            else {
                let result: Object <- top in {
                    self <- next;
                    result;
                }
            }
        }
    };
};

class Main {
    main(): Object {
        {
            let s: Stack <- new Stack in {
                s <- s.push(1).push("hello").push(false);
                out_string("Popped: ");
                out_string(s.pop().to_string());
                out_string("\n");
            }
        }
    };
};
