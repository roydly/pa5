class Main {
    main(): Object {
        {
            let x: Int <- "string" in  -- 类型错误
                x + 1
        }
    };
};

class A {
    foo(x: Int): Int { x + 1 };
};

class B inherits A {
    bar(): Int {
        foo()  -- 参数数量错误
    };
};
