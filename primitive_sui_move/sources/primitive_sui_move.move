module primitive_sui_move::xyz;

use std::u8::max;
use std::debug::print;
use std::string::String;

#[test]
fun play_with_primitive_test(){
    // integers incude 
    let a: u8 = 100; // can't take more take 2^8 - 1
    let b: u16 = 65535; // can't take more than 2^16 - 1
    let e: u64 = 232323;
    let c: u128 = 10000000;
    let d: u256 = 80000008899;

    // Boolean include true and false
    let foo: bool = true;
    let bar: bool = false;

    let male: bool = true;
    let female: bool = false;

    // Address - hexadecimal means base 16
    // explain 1,2,3,4,5,6,7,8,9, a, b, c, d, e, f
    // 0xb908f3c6fea6865d32e2048c520cdfe3b5c5bbcebb658117c41bad70f52b7ccc
    // 0x09afb9a1c63a9bbaba650ef0a6b473b9874882cd63aab9570b99274e8f796f00
    // 0xd2197b1ce2096e96e726c29fa2c138c5c6748da169b81d34927c522b7499f1d7
    let addr: address = @0x4374637463746374aaaaaaaaaaafffff;
    

}

#[test]
fun check_with_is_bigger_test() {
    let x = max(1,3);
    let (i, j) = xyz();
    let name: String = b"George-Goldman".to_string();
    print(&name);
}

fun xyz(): (u8, bool) {
    (80, false)
}

#[test]
fun sample(): (u8, u16) {
    let i: u8 = 9;
    let j: u16 = 1000;
    (i, j)
}

fun iii() :bool {
    // let r = 10;
    // let y =@0xeee;
    true
}

