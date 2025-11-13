module 0x0::xyz;

use std::string::String;
use std::debug::print;
use std::u8::max;

public fun run(action: String): String {
    action
}

#[test]
fun run_test(){
    let action = b"I am running a move code.".to_string();
    let b = run(action);
    print(&b);
}

// operation in arithmetics adition, substraction, multplication, mod

public fun add(a: u8, b: u8): u8 {
    a + b
}

public fun sub(a: u8, b: u8): u8 {
    let max_number = max(a,b );
    if (max_number == a){
        return a - b
    };
    b - a
    // a - b
}

#[test]
fun test_arithmetics(){
    let sum = add(1,2);
    let difference = sub(1,2);
    print(&sum);
    print(&difference);
}
